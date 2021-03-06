<?php

namespace App\Repository;

use App\Entity\Property;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;
use Doctrine\ORM\Query;
use App\Entity\PropertySearch;

/**
 * @method Property|null find($id, $lockMode = null, $lockVersion = null)
 * @method Property|null findOneBy(array $criteria, array $orderBy = null)
 * @method Property[]    findAll()
 * @method Property[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class PropertyRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, Property::class);
    }

    // /**
    //  * @return Property[] Returns an array of Property objects
    //  */
    /*
    public function findByExampleField($value)
    {
        return $this->createQueryBuilder('p')
            ->andWhere('p.exampleField = :val')
            ->setParameter('val', $value)
            ->orderBy('p.id', 'ASC')
            ->setMaxResults(10)
            ->getQuery()
            ->getResult()
        ;
    }
    */

    /*
    public function findOneBySomeField($value): ?Property
    {
        return $this->createQueryBuilder('p')
            ->andWhere('p.exampleField = :val')
            ->setParameter('val', $value)
            ->getQuery()
            ->getOneOrNullResult()
        ;
    }
    */

    /**
     * @return Query
     */
    public function findAllVisibleQuery(PropertySearch $search): Query
    {
        // return $this->createQueryBuilder('p')
        //     ->andWhere('p.sold = false')
        //     ->getQuery()
        //     // ->getResult()
        // ;
        $query = $this->createQueryBuilder('p');

        if ($search->getMaxPrice()){
            $query = $query -> andwhere('p.price <= :maxprice');
            $query->setParameter('maxprice', $search->getMaxPrice());
        }
        if ($search->getMinSurface()){
            $query = $query -> andwhere('p.surface >= :minsurface');
            $query->setParameter('minsurface', $search->getMinSurface());
        }

        if ($search->getOptions()->count() > 0){
            foreach($search->getOptions() as $k => $option){
                $query = $query
                ->andWhere(":option$k MEMBER OF p.options")
                ->setParameter("option$k", $option);
            }
        }

            return $query->getQuery();
    }

    /**
     * @return Property()
     */
    public function findLatest(): array
    {
        return $this->createQueryBuilder('p')
            ->andWhere('p.sold = false')
            ->orderBy('p.createdAt', 'DESC')
            ->setMaxResults(9)
            ->getQuery()
            ->getResult();
    }
}

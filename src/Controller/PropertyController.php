<?php
namespace App\Controller;

use App\Entity\Property;
use App\Repository\PropertyRepository;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Doctrine\ORM\EntityManagerInterface;
use Doctrine\Persistence\ObjectManager;
use Symfony\Component\HttpFoundation\Request;

class PropertyController extends AbstractController
{    
    /**
     * @Route("/biens", name="property.index")
     * @return Response
     */
    public function index(PropertyRepository $repository, EntityManagerInterface $em): Response
    {
        // $property = new Property();
        // $property->setTitle('Mon premier bien')
        //     ->setDescription('Une petite description')
        //     ->setPrice(200000)
        //     ->setRooms(4)
        //     ->setSurface(60)
        //     ->setBedrooms(3)
        //     ->setFloor(4)
        //     ->setHeat(1)
        //     ->setCity('Montigny')
        //     ->setAddress('133 Boulevard Descartes')
        //     ->setPostalCode('78180')
        //     ->setSold(false);

        // $em = $this->getDoctrine()->getManager();
        // $em->persist($property);
        // $em->flush();
     
        // $repository = $this->getDoctrine()->getRepository(Property::class);

        
        //dd($proprietes);

     return $this->render('property/index.html.twig',
        [
        'current_menu' => 'properties'
        
        ]
        );
    }

    /**
     * @Route("/biens/{slug}-{id}", name="property.show", requirements={"slug": "[a-z0-9\-]*"})
     * @return Response
     */
    public function show($slug, $id, PropertyRepository $repository): Response
    {
        $propiete = $repository->find($id);
        return $this->render('property/show.html.twig',
        [
        'current_menu' => 'properties',
        'propriete' => $propiete
        ]
        );
    }
}

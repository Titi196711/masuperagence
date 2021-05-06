<?php
namespace App\Controller;

use App\Entity\Property;
use App\Entity\PropertySearch;
use App\Form\PropertySearchType;
use App\Repository\PropertyRepository;
use Knp\Component\Pager\PaginatorInterface;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Component\HttpFoundation\Request;

class PropertyController extends AbstractController
{    
    /**
     * @Route("/biens", name="property.index")
     * @return Response
     */
    public function index(PropertyRepository $repository, EntityManagerInterface $em, PaginatorInterface $paginator, Request $request): Response
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

        $search = new PropertySearch();
        $form = $this->createForm(PropertySearchType::class, $search);
        $form->handleRequest($request);

        $properties = $paginator->paginate(
            $repository->findAllVisibleQuery($search),
            $request->query->getInt('page', 1), /*page number*/
            12
            );
        
     return $this->render('property/index.html.twig',
        [
        'current_menu' => 'properties',
        'properties' => $properties,
        'form' => $form->createView()
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

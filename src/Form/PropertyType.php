<?php

namespace App\Form;

use App\Entity\Property;
use App\Entity\Option;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Doctrine\ORM\EntityRepository;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;
use Symfony\Component\Form\Extension\Core\Type\FileType;


class PropertyType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('title', null, ['label' => 'Titre'])
            ->add('description')
            ->add('surface')
            ->add('rooms', null, ['label' => 'Nbre de pièces'])
            ->add('bedrooms', null, ['label' => 'Nbre de chambres'])
            ->add('floor', null, ['label' => 'Etage'])
            ->add('price', null, ['label' => 'Prix'])
            ->add('heat', ChoiceType::class, [
                'label' => 'Type de Chauffage', 
                'choices' => $this->getChoices()
                ])
            ->add('options', EntityType::class, [
                'class' => Option::class, 
                'required' => false,
                'choice_label' => 'name', 
                'multiple' => true
                ])
            ->add('imagefile', fileType::class, [
                'required' => false
            ])
            ->add('city', null, ['label' => 'Ville'])
            ->add('address', null, ['label' => 'Adresse'])
            ->add('postal_code', null, ['label' => 'CP'])
            ->add('sold', null, ['label' => 'Vendu'])
            // ->add('createdAt')
        ;
    }

    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults([
            'data_class' => Property::class,
        ]);
    }

    private function getChoices()
        {
            $choices = Property::HEAT;
            $output = [];
            foreach($choices as $k => $v){
                $output[$v] = $k;
            }
            return $output;
        }

}

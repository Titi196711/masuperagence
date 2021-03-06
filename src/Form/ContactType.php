<?php

namespace App\Form;

use App\Entity\Contact;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;
use Symfony\Component\Form\Extension\Core\Type\EmailType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class ContactType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('firstname', TextType::class, [
                'required' => true,
                'label' => false,
                'attr' => ['placeholder' => 'Votre prénom SVP']
            ])
            ->add('lastname', TextType::class, [
                'required' => true,
                'label' => false,
                'attr' => ['placeholder' => 'Votre nom SVP']
            ])
            ->add('phone', TextType::class, [
                'required' => true,
                'label' => false,
                'attr' => ['placeholder' => 'Votre téléphone SVP']
            ])
            ->add('email', EmailType::class, [
                'required' => true,
                'label' => false,
                'attr' => ['placeholder' => 'Votre Email SVP']
            ])
            ->add('message', TextareaType::class, [
                'required' => true,
                'label' => false,
                'attr' => ['placeholder' => 'Votre Message']
            ])

        ;
    }

    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults([
            'data_class' => Contact::class
        ]);
    }

}

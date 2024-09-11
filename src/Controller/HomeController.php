<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

// Use Annotation instead of Attribute for Symfony 5.x or earlier
use Doctrine\ORM\EntityManagerInterface;
use App\Entity\Categories;

class HomeController extends AbstractController
{
    #[Route('/', name: 'Home')]
    public function index(): Response
    {
        if ($this->isGranted('ROLE_CLIENT')) {
            return $this->render('client/navbar.html.twig');
        } elseif ($this->isGranted('ROLE_ADMIN')) {
            return $this->render('Admin/navbar.html.twig');
        } else {
            return $this->render('base.html.twig');
        }
    }


}

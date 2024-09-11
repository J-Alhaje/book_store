<?php

namespace App\Controller;

use App\Entity\Categories;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class CategoryController extends AbstractController
{
    #[Route('/categories', name: 'app_category')]
    public function index(EntityManagerInterface $entityManager): Response
    {
        // Fetch all categories
        $categories = $entityManager->getRepository(Categories::class)->findAll();

        // Pass the categories to the Twig template
        return $this->render('category/index.html.twig', [
            'categories' => $categories,
        ]);
    }

    #[Route('/category/{id}', name: 'category_show')]
    public function show(Categories $category): Response
    {
        $products = $category->getProducts();

        return $this->render('category/show.html.twig' , [
            'category' => $category,
            'products' => $products,
        ]);
    }
}

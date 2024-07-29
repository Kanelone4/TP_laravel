<?php

namespace Database\Seeders;

use App\Models\User;
// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\Author;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        // User::factory(10)->create();

       // User::factory()->create([
       //     'name' => 'Test User',
       //     'email' => 'test@example.com',
      //  ]);

        Author::create([
            "name" => "Nathaniel Hawthorne",
            "biography" => "Nathaniel Hawthorne (born July 4, 1804, Salem, Massachusetts, U.S.—died May 19, 1864, Plymouth, New Hampshire) is one of the greatest fiction writers of 19th-century American literature. A master of the allegorical and symbolic tale, he remains best known for the novels The Scarlet Letter (1850) and The House of the Seven Gables (1851)."
        ]);

        Author::create([
            "name" => "Victor Hugo",
            "biography" => "Victor Hugo, parfois surnommé l'Homme océan ou, de manière posthume, l'Homme siècle, est un poète, dramaturge, écrivain, romancier et dessinateur romantique français, né le 7 ventôse an X (26 février 1802) à Besançon et mort le 22 mai 1885 à Paris. Il est considéré comme l'un des écrivains de la langue française et de la littérature mondiale les plus importants. "
        ]);


        Author::create([
            "name" => "Maxime Lorant",
            "biography" => "Maxime Lorant is a technical lead who has made significant contributions in the field of web development. He studied at the IUT de Vannes and later at the INSA de Rennes."
        ]);


        Author::create([
            "name" => "Henri Poincaré",
            "biography" => "Henri Poincaré, born on April 29, 1854, in Nancy, France, was a remarkable mathematician, theoretical physicist, and philosopher of science. His contributions spanned various fields, and here are some key aspects of his life and work"
        ]);


        Author::create([
            "name" => "J.J. Rousseau",
            "biography" => "Jean-Jacques Rousseau (born June 28, 1712, Geneva, Switzerland—died July 2, 1778, Ermenonville, France) was a Swiss-born philosopher, writer, and political theorist whose treatises and novels inspired the leaders of the French Revolution and the Romantic generation."
        ]);

        Author::create([
            "name" => "JK Rowlings",
            "biography" => "Joanne Rowling CH OBE FRSL , known by her pen name J. K. Rowling, is a British author and philanthropist. She wrote Harry Potter, a seven-volume fantasy series published from 1997 to 2007. "
        ]);


    }
}

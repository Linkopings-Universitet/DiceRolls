//
//  ViewController.m
//  DiceRoll
//
//  Created by Alek Åström on 2012-01-19.
//  Edited by Cenny Davidsson 2014-01-15.
//  Copyright (c) 2012 Linköping University. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController


#pragma mark - View lifecycle

//--
// Den här metoden anropas när användaren trycker på "Kasta"-knappen.
//
// Uppgiften går ut på att bygga klart applikationen och
// städa upp den givna koden. Som du säkert ser så är koden i throwDice inte
// jättebra skriven. Du får strukturera om den hur du vill, men det kan vara
// praktiskt att använda t.ex. en NSArray för att lagra de olika bild-objekten för
// respektive tärning. Ingen if-sats-programmering (på det sättet som förekommer
// i throwDice) är tillåten någonstans i uppgiften!
//
// Tänk på att du ska slumpa fem olika tärningar per tryck och att du, efter att du 
// slumpat, måste kunna komma åt värdet för respektive tärning på ett enkelt
// sätt - annars kan du inte implementera saveThrow nedan. Det kan vara
// praktiskt att skapa flera hjälp-metoder.
//
// All GUI-kod är färdig i den här uppgiften, vilket betyder att du inte behöver
// bryg dig om den ännu. Du behöver alltså inte röra storyboarden. Däremot kan
// det vara bra att se den för att se vilka subvyer som är kopplade till vilka properties.
//--

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Lägg in extra initialiseringskod här
}

#pragma mark - User interaction

- (IBAction)throwDice {
    
    // Slumpa fram en siffra som ska visas på tärningen
    NSUInteger dieIndex = arc4random_uniform(6);
    
    // Välj ut vilken bild som ska användas beroende på den framslumpade siffran
    NSString *imageName = nil;
    switch (dieIndex) {
        case 0:
            imageName = @"one";
            break;
        case 1:
            imageName = @"two";
            break;
        case 2:
            imageName = @"three";
            break;
        case 3:
            imageName = @"four";
            break;
        case 4:
            imageName = @"five";
            break;
        case 5:
            imageName = @"six";
            break;
    }
    
    // Ladda in bilden som motsvarar den framslumpade tärningen
    UIImage *image = [UIImage imageNamed:imageName];
    
    // Uppdatera gränssnittet så att den första tärningen visar bilden
    self.dieOne.image = image;
    
    // Spara undan värdet på tärningen så att användaren enkelt kan spara värdet med
    // spara-knappen
    self.dieValue = dieIndex+1;
}

//--
// Den här metoden anropas när användaren trycker på "Spara"-knappen. Syftet med
// metoden är att uppdatera listan med de senaste kasten och lägga till det nuvarande
// kastet överst. Formatat på strängen skall se ut så här:
//
// 1 + 2 + 3 + 4 + 5 = 15
//
// Notera att tärningarnas värden även ska summeras och visas. I den givna koden
// kommer bara den senast kastade tärningen att visas. Du måste således komplettera
// med att visa resterande tärningar, totalsumma och se till att bevara de senaste 
// kasten. 
//
// Textetiketten kommer alltid bara visa de senaste tio raderna, oavsett hur många 
// rader strängen den visar innehåller (detta är inställt med Interface Builder).
// Du behöver inte bry dig om att räkna hur många rader som visas för tillfället
// och försöka anpassa så bara de tio senaste raderna finns i textsträngen.
//--

- (IBAction)saveThrow {    
    self.latestTenThrows.text = [NSString stringWithFormat:@"%d", self.dieValue];
}
@end

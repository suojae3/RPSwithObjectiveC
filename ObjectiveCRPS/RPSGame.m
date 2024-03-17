
#import "RPSGame.h"

@implementation RPSGame

- (RPSGameResult)playGameWithUserChoice:(RPSChoice)userChoice {
    if (userChoice == RPSChoiceNone) {
        return RPSGameResultQuit;
    }
    
    RPSChoice computerChoice = arc4random_uniform(3) + 1;
    if (userChoice == computerChoice) {
        return RPSGameResultDraw;
    }
    
    // Determine win/lose
    switch (userChoice) {
        case RPSChoiceRock:
            return (computerChoice == RPSChoiceScissors) ? RPSGameResultWin : RPSGameResultLose;
        case RPSChoicePaper:
            return (computerChoice == RPSChoiceRock) ? RPSGameResultWin : RPSGameResultLose;
        case RPSChoiceScissors:
            return (computerChoice == RPSChoicePaper) ? RPSGameResultWin : RPSGameResultLose;
        default:
            return RPSGameResultInvalid;
    }
}

@end

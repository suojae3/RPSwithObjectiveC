#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, RPSChoice) {
    RPSChoiceNone,
    RPSChoiceRock,
    RPSChoicePaper,
    RPSChoiceScissors
};

typedef NS_ENUM(NSInteger, RPSGameResult) {
    RPSGameResultWin,
    RPSGameResultLose,
    RPSGameResultDraw,
    RPSGameResultQuit,
    RPSGameResultInvalid
};

@interface RPSGame : NSObject

- (RPSGameResult)playGameWithUserChoice:(RPSChoice)userChoice;

@end

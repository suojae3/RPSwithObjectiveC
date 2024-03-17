
#import "RPSGameViewModel.h"
#import "RPSGame.h"

@implementation RPSGameViewModel

- (void)startGame {
    RPSGame *game = [[RPSGame alloc] init];
    int userChoice;
    BOOL isGameWon = NO;
    
    do {
        NSLog(@"가위(1), 바위(2), 보(3)! <종료 : 0> : ");
//        scanf("%d", &userChoice);
        userChoice = RPSChoiceRock;

        RPSChoice choice = (RPSChoice)userChoice;
        if (userChoice < 0 || userChoice > 3) {
            NSLog(@"잘못된 입력입니다. 다시 시도해주세요.");
            continue;
        }
        
        RPSGameResult result = [game playGameWithUserChoice:choice];
        
        switch (result) {
            case RPSGameResultWin:
                NSLog(@"이겼습니다!");
                isGameWon = YES; // 게임 승리 시 플래그 수정
                break;
            case RPSGameResultLose:
                NSLog(@"졌습니다!");
                break;
            case RPSGameResultDraw:
                NSLog(@"비겼습니다!");
                break;
            case RPSGameResultQuit:
                NSLog(@"게임 종료");
                return; // 게임 종료
            default:
                NSLog(@"잘못된 입력입니다. 다시 시도해주세요.");
                break;
        }
    } while (!isGameWon); // 게임을 이길 때까지
//    } while (userChoice != RPSChoiceNone);
}

@end

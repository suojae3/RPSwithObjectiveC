

#import <Foundation/Foundation.h>
#import "RPSGameViewModel.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        RPSGameViewModel *viewModel = [[RPSGameViewModel alloc] init];
        [viewModel startGame];
    }
    return 0;
}

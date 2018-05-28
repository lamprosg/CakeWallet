//
//  MoneroTransfer.h
//  Wallet
//
//  Created by Cake Technologies 10.10.17.
//  Copyright © 2017 Cake Technologies. 
//

#ifndef MoneroTransfer_h
#define MoneroTransfer_h

@interface MoneroTransferAdapter : NSObject
@property (nonatomic, readonly) uint64_t amount;
@property (nonatomic, readonly) NSString *address;
- (instancetype)initWithAmount:(uint64_t) amount andAddress:(NSString *) address;
@end

#endif /* MoneroTransfer_h */

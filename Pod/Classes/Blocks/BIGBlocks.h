//
//  BIGBlocks.h
//  Pods
//
//  Created by Vincil Bishop on 7/21/15.
//
//

#ifndef Pods_BIGBlocks_h
#define Pods_BIGBlocks_h

/**
 *  A convenience macro to define a block that returns a single value.
 *
 *  @param __RESULT_TYPE__ The type of the value the block will return.
 *
 */
#define BIG_STRONG_SIMPLE_BLOCK(__RESULT_TYPE__) \
(__RESULT_TYPE__)

/**
 *  A convenience macro to define a block that returns two values.
 *
 *  @param __SENDER_TYPE__ The type of the first value the block will return, usually the sender's type.
 *  @param __RESULT_TYPE__ The type of the second value the block will return.
 *
 */
#define BIG_STRONG_SENDER_BLOCK(__SENDER_TYPE__,__RESULT_TYPE__) \
(__SENDER_TYPE__,__RESULT_TYPE__)

/**
 *  A convenience macro to define a block that returns a sender, the old value, and the new value.
 *
 *  @param __SENDER_TYPE__    The type of the sender value the block will return.
 *  @param __OLD_VALUE_TYPE__ The type of the old value the block will return.
 *  @param __NEW_VALUE_TYPE__ The type of the new value the block will return.
 *
 */
#define BIG_STRONG_STATE_CHANGE_BLOCK(__SENDER_TYPE__,__OLD_VALUE_TYPE__,__NEW_VALUE_TYPE__) \
(__SENDER_TYPE__,__OLD_VALUE_TYPE__,__NEW_VALUE_TYPE__)

/**
 *  A convenience macro to define a block that has both a strong sender and a strong result, with success/error members returned.
 *
 *  @param __SENDER_TYPE__ The type of the sender value the block will return.
 *  @param __RESULT_TYPE__ The type of the result value the block will return.
 *
 */
#define BIG_STRONG_COMPLETION_BLOCK(__SENDER_TYPE__,__RESULT_TYPE__) \
(__SENDER_TYPE__ sender, BOOL success, NSError *error, __RESULT_TYPE__ result)

/**
 *  A convenience macro that creates a typedef using a block definition or macro.
 *
 *  @param __TYPE__        The type to define.
 *  @param __BLOCK_DEF__ The block definition or macro to type.
 *
 */
#define BIG_BLOCK_TYPEDEF(__TYPE__,__BLOCK_DEF__) \
typedef void (^__TYPE__)__BLOCK_DEF__;

/**
 *  A convenience macro that creates a parameter using a block definition or macro.
 *
 *  @param __BLOCK_DEF__ The block definition or macro to type.
 *
 */
#define BIG_BLOCK_PARAMETER(__BLOCK_DEF__) \
void (^)__BLOCK_DEF__


/**
 *  BigSimpleBlock defined for convenience.
 */
BIG_BLOCK_TYPEDEF(BigSimpleBlock,BIG_STRONG_SIMPLE_BLOCK(id))

/**
 *  BigSenderBlock defined for convenience.
 */
BIG_BLOCK_TYPEDEF(BigSenderBlock,BIG_STRONG_SENDER_BLOCK(id,id))

/**
 *  BigStateChangeBlock defined for convenience.
 */
BIG_BLOCK_TYPEDEF(BigStateChangeBlock,BIG_STRONG_STATE_CHANGE_BLOCK(id,id,id))

/**
 *  BigCompletionBlock defined for convenience.
 */
BIG_BLOCK_TYPEDEF(BigCompletionBlock,BIG_STRONG_COMPLETION_BLOCK(id,id))


#endif

.class Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout$DeleteKeyOnTouchListener;
.super Ljava/lang/Object;
.source "AbstractEmoticonLayout.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DeleteKeyOnTouchListener"
.end annotation


# static fields
.field private static final KEY_REPEAT_STATE_INITIALIZED:I = 0x0

.field private static final KEY_REPEAT_STATE_KEY_DOWN:I = 0x1

.field private static final KEY_REPEAT_STATE_KEY_REPEAT:I = 0x2

.field static final MAX_REPEAT_COUNT_TIME:J


# instance fields
.field final mKeyRepeatInterval:J

.field final mKeyRepeatStartTimeout:J

.field private mKeyboardActionListener:Lcom/ime/framework/view/event/KeyboardActionListener;

.field private mState:I

.field private final mTimer:Landroid/os/CountDownTimer;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout$DeleteKeyOnTouchListener;->MAX_REPEAT_COUNT_TIME:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/ime/framework/view/event/KeyboardActionListener;

    invoke-direct {v0}, Lcom/ime/framework/view/event/KeyboardActionListener;-><init>()V

    iput-object v0, p0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout$DeleteKeyOnTouchListener;->mKeyboardActionListener:Lcom/ime/framework/view/event/KeyboardActionListener;

    const/4 v0, 0x0

    iput v0, p0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout$DeleteKeyOnTouchListener;->mState:I

    const-wide/16 v0, 0x190

    iput-wide v0, p0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout$DeleteKeyOnTouchListener;->mKeyRepeatStartTimeout:J

    const-wide/16 v0, 0x32

    iput-wide v0, p0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout$DeleteKeyOnTouchListener;->mKeyRepeatInterval:J

    new-instance v0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout$DeleteKeyOnTouchListener$1;

    sget-wide v2, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout$DeleteKeyOnTouchListener;->MAX_REPEAT_COUNT_TIME:J

    iget-wide v4, p0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout$DeleteKeyOnTouchListener;->mKeyRepeatInterval:J

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout$DeleteKeyOnTouchListener$1;-><init>(Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout$DeleteKeyOnTouchListener;JJ)V

    iput-object v0, p0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout$DeleteKeyOnTouchListener;->mTimer:Landroid/os/CountDownTimer;

    return-void
.end method

.method private handleKeyDown()V
    .locals 2

    iget-object v0, p0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout$DeleteKeyOnTouchListener;->mKeyboardActionListener:Lcom/ime/framework/view/event/KeyboardActionListener;

    const/4 v1, -0x5

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/event/KeyboardActionListener;->onPress(I)V

    return-void
.end method

.method private handleKeyUp()V
    .locals 3

    const/4 v2, -0x5

    iget-object v0, p0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout$DeleteKeyOnTouchListener;->mKeyboardActionListener:Lcom/ime/framework/view/event/KeyboardActionListener;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/ime/framework/view/event/KeyboardActionListener;->onKey(I[I)V

    iget-object v0, p0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout$DeleteKeyOnTouchListener;->mKeyboardActionListener:Lcom/ime/framework/view/event/KeyboardActionListener;

    invoke-virtual {v0, v2}, Lcom/ime/framework/view/event/KeyboardActionListener;->onRelease(I)V

    return-void
.end method

.method private onTouchCanceled(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout$DeleteKeyOnTouchListener;->mTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout$DeleteKeyOnTouchListener;->mState:I

    return-void
.end method

.method private onTouchDown(Landroid/view/View;)V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout$DeleteKeyOnTouchListener;->mTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    invoke-direct {p0}, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout$DeleteKeyOnTouchListener;->handleKeyDown()V

    invoke-virtual {p1, v1}, Landroid/view/View;->setPressed(Z)V

    iput v1, p0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout$DeleteKeyOnTouchListener;->mState:I

    iget-object v0, p0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout$DeleteKeyOnTouchListener;->mTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method private onTouchUp(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout$DeleteKeyOnTouchListener;->mTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    iget v0, p0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout$DeleteKeyOnTouchListener;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout$DeleteKeyOnTouchListener;->handleKeyUp()V

    :cond_0
    invoke-virtual {p1, v2}, Landroid/view/View;->setPressed(Z)V

    iput v2, p0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout$DeleteKeyOnTouchListener;->mState:I

    return-void
.end method


# virtual methods
.method onKeyRepeat()V
    .locals 1

    iget v0, p0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout$DeleteKeyOnTouchListener;->mState:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-direct {p0}, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout$DeleteKeyOnTouchListener;->handleKeyUp()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout$DeleteKeyOnTouchListener;->mState:I

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout$DeleteKeyOnTouchListener;->handleKeyUp()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v4, 0x0

    const/4 v2, 0x1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    return v2

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout$DeleteKeyOnTouchListener;->onTouchDown(Landroid/view/View;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    cmpg-float v3, v0, v4

    if-ltz v3, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v3, v3, v0

    if-ltz v3, :cond_1

    cmpg-float v3, v1, v4

    if-ltz v3, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v3, v3, v1

    if-gez v3, :cond_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout$DeleteKeyOnTouchListener;->onTouchCanceled(Landroid/view/View;)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout$DeleteKeyOnTouchListener;->onTouchUp(Landroid/view/View;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

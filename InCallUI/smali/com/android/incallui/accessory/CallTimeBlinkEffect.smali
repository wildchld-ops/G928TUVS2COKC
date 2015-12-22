.class public Lcom/android/incallui/accessory/CallTimeBlinkEffect;
.super Ljava/lang/Object;
.source "CallTimeBlinkEffect.java"


# instance fields
.field private final BLINK_DELAY:I

.field private final BLINK_START:I

.field private final LOG_TAG:Ljava/lang/String;

.field private final MAX_BLINK_COUNT:I

.field private isAfterActiveCall:Z

.field private mBlinkCount:I

.field mCallStateLabel:Landroid/widget/TextView;

.field mEndCallString:Ljava/lang/String;

.field mEndCallTime:Ljava/lang/String;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "CallTimeBlinkEffect"

    iput-object v0, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->LOG_TAG:Ljava/lang/String;

    const/16 v0, 0x64

    iput v0, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->BLINK_START:I

    const/16 v0, 0x1f4

    iput v0, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->BLINK_DELAY:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->MAX_BLINK_COUNT:I

    iput v1, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->mBlinkCount:I

    iput-boolean v1, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->isAfterActiveCall:Z

    new-instance v0, Lcom/android/incallui/accessory/CallTimeBlinkEffect$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/accessory/CallTimeBlinkEffect$1;-><init>(Lcom/android/incallui/accessory/CallTimeBlinkEffect;)V

    iput-object v0, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/accessory/CallTimeBlinkEffect;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->doingBlink()V

    return-void
.end method

.method private doingBlink()V
    .locals 5

    const/16 v4, 0x64

    const/4 v2, 0x4

    const/4 v1, 0x0

    const-string v3, "doingBlink"

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget v3, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->mBlinkCount:I

    if-eq v3, v2, :cond_3

    iget-object v3, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->mEndCallTime:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->mBlinkCount:I

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-object v3, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->mCallStateLabel:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->mCallStateLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    :goto_1
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    iget v1, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->mBlinkCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->mBlinkCount:I

    iget-object v1, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_2
    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->mCallStateLabel:Landroid/widget/TextView;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->mCallStateLabel:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->mEndCallString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_4
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->mEndCallTime:Ljava/lang/String;

    goto :goto_2
.end method


# virtual methods
.method public init(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;)V
    .locals 2

    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->PENDING_OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p1, v0, :cond_2

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->isAfterActiveCall:Z

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->stop()V

    return-void

    :cond_2
    const/4 v0, 0x3

    invoke-virtual {p2}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->isAfterActiveCall:Z

    goto :goto_0
.end method

.method public start(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "start"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->mCallStateLabel:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->mEndCallString:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->mEndCallTime:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->mBlinkCount:I

    iget-object v0, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-boolean v0, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->isAfterActiveCall:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->mCallStateLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->mCallStateLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->mEndCallTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->doingBlink()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->mCallStateLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->mCallStateLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->mEndCallString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public stop()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "stop"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->mBlinkCount:I

    iput-object v2, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->mEndCallTime:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->mEndCallString:Ljava/lang/String;

    return-void
.end method

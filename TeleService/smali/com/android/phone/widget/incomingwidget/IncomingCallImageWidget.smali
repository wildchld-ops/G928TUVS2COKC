.class public Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;
.super Landroid/widget/FrameLayout;
.source "IncomingCallImageWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget$OnTriggerListener;
    }
.end annotation


# instance fields
.field private final DBG:Z

.field private final END_CALL_IMAGE_WIDGET:Ljava/lang/String;

.field private final ENLARGED_DESCRIPTION_TEXT_SIZE:I

.field private final INCOMING_CALL_IMAGE_WIDGET:Ljava/lang/String;

.field private final IN_CALL_IMAGE_WIDGET:Ljava/lang/String;

.field private final LOG_TAG:Ljava/lang/String;

.field private final NORMAL_DESCRIPTION_TEXT_SIZE:I

.field public final VIBRATE_LONG:J

.field public final VIBRATE_SHORT:J

.field protected mContext:Landroid/content/Context;

.field protected mGrabbedState:I

.field private mIncomingCallHelpDescription:Landroid/widget/TextView;

.field protected mLeftBottomHandle:Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;

.field protected mLeftHandle:Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;

.field protected mOnTriggerListener:Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget$OnTriggerListener;

.field protected mRightHandle:Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;

.field private mTag:Ljava/lang/String;

.field public mUseHoverToAction:Z

.field public mUseVibate:Z

.field protected mVibrator:Landroid/os/Vibrator;

.field private marginMagicNumber:D


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-boolean v3, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->DBG:Z

    const-string v0, "IncomingCallImageWidget"

    iput-object v0, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->LOG_TAG:Ljava/lang/String;

    const-wide/16 v0, 0x1e

    iput-wide v0, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->VIBRATE_SHORT:J

    const-wide/16 v0, 0x28

    iput-wide v0, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->VIBRATE_LONG:J

    iput v2, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->mGrabbedState:I

    iput-boolean v2, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->mUseHoverToAction:Z

    iput-boolean v3, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->mUseVibate:Z

    const/16 v0, 0xd

    iput v0, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->NORMAL_DESCRIPTION_TEXT_SIZE:I

    const/16 v0, 0x14

    iput v0, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->ENLARGED_DESCRIPTION_TEXT_SIZE:I

    const-string v0, "IncomingCallImageWidget"

    iput-object v0, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->INCOMING_CALL_IMAGE_WIDGET:Ljava/lang/String;

    const-string v0, "InCallImageWidget"

    iput-object v0, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->IN_CALL_IMAGE_WIDGET:Ljava/lang/String;

    const-string v0, "EndCallImageWidget"

    iput-object v0, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->END_CALL_IMAGE_WIDGET:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->mTag:Ljava/lang/String;

    const-wide v0, 0x4012666666666666L    # 4.6

    iput-wide v0, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->marginMagicNumber:D

    iput-object p1, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v3, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->DBG:Z

    const-string v0, "IncomingCallImageWidget"

    iput-object v0, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->LOG_TAG:Ljava/lang/String;

    const-wide/16 v0, 0x1e

    iput-wide v0, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->VIBRATE_SHORT:J

    const-wide/16 v0, 0x28

    iput-wide v0, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->VIBRATE_LONG:J

    iput v2, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->mGrabbedState:I

    iput-boolean v2, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->mUseHoverToAction:Z

    iput-boolean v3, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->mUseVibate:Z

    const/16 v0, 0xd

    iput v0, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->NORMAL_DESCRIPTION_TEXT_SIZE:I

    const/16 v0, 0x14

    iput v0, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->ENLARGED_DESCRIPTION_TEXT_SIZE:I

    const-string v0, "IncomingCallImageWidget"

    iput-object v0, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->INCOMING_CALL_IMAGE_WIDGET:Ljava/lang/String;

    const-string v0, "InCallImageWidget"

    iput-object v0, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->IN_CALL_IMAGE_WIDGET:Ljava/lang/String;

    const-string v0, "EndCallImageWidget"

    iput-object v0, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->END_CALL_IMAGE_WIDGET:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->mTag:Ljava/lang/String;

    const-wide v0, 0x4012666666666666L    # 4.6

    iput-wide v0, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->marginMagicNumber:D

    iput-object p1, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v3, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->DBG:Z

    const-string v0, "IncomingCallImageWidget"

    iput-object v0, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->LOG_TAG:Ljava/lang/String;

    const-wide/16 v0, 0x1e

    iput-wide v0, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->VIBRATE_SHORT:J

    const-wide/16 v0, 0x28

    iput-wide v0, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->VIBRATE_LONG:J

    iput v2, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->mGrabbedState:I

    iput-boolean v2, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->mUseHoverToAction:Z

    iput-boolean v3, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->mUseVibate:Z

    const/16 v0, 0xd

    iput v0, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->NORMAL_DESCRIPTION_TEXT_SIZE:I

    const/16 v0, 0x14

    iput v0, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->ENLARGED_DESCRIPTION_TEXT_SIZE:I

    const-string v0, "IncomingCallImageWidget"

    iput-object v0, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->INCOMING_CALL_IMAGE_WIDGET:Ljava/lang/String;

    const-string v0, "InCallImageWidget"

    iput-object v0, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->IN_CALL_IMAGE_WIDGET:Ljava/lang/String;

    const-string v0, "EndCallImageWidget"

    iput-object v0, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->END_CALL_IMAGE_WIDGET:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->mTag:Ljava/lang/String;

    const-wide v0, 0x4012666666666666L    # 4.6

    iput-wide v0, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->marginMagicNumber:D

    iput-object p1, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->init()V

    return-void
.end method


# virtual methods
.method createIncomingCallHelpDescription()V
    .locals 4

    const/4 v2, -0x2

    const-string v1, "incoming_call_widget_description_enable"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x51

    invoke-direct {v0, v2, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->mIncomingCallHelpDescription:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->mIncomingCallHelpDescription:Landroid/widget/TextView;

    const v2, 0x7f0a0524

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->mIncomingCallHelpDescription:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v1, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->mIncomingCallHelpDescription:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c006e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->mIncomingCallHelpDescription:Landroid/widget/TextView;

    const/high16 v2, 0x41500000    # 13.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    const-string v1, "incoming_call_widget_description_enlarge"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->mIncomingCallHelpDescription:Landroid/widget/TextView;

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    :cond_0
    iget-object v1, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->mIncomingCallHelpDescription:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v0}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method public dispatchTriggerEvent(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dispatchTriggerEvent : whichHandle - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->log(Ljava/lang/String;)V

    const-wide/16 v0, 0x28

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->vibrate(J)V

    iget-object v0, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->mOnTriggerListener:Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget$OnTriggerListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->mOnTriggerListener:Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget$OnTriggerListener;

    invoke-interface {v0, p0, p1}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget$OnTriggerListener;->onTrigger(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method protected init()V
    .locals 7

    const/16 v6, 0x53

    const/4 v5, -0x2

    const-string v3, "init"

    invoke-virtual {p0, v3}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->log(Ljava/lang/String;)V

    const-string v4, "useHoverToAction"

    invoke-virtual {p0}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->mUseHoverToAction:Z

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v5, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x55

    invoke-direct {v2, v5, v5, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v5, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->initHandle()V

    const-string v4, "InCallImageWidget"

    invoke-virtual {p0}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v4, "EndCallImageWidget"

    invoke-virtual {p0}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->setEasyTouchModeEnabled(Z)V

    :cond_1
    iget-object v3, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {p0, v3, v1}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {p0, v3, v2}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->createIncomingCallHelpDescription()V

    return-void
.end method

.method initHandle()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->mTag:Ljava/lang/String;

    new-instance v0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;

    iget-object v1, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;

    new-instance v0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;

    iget-object v1, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->mContext:Landroid/content/Context;

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;

    new-instance v0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;

    iget-object v1, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->mContext:Landroid/content/Context;

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->mLeftBottomHandle:Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;

    iget-object v0, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;

    iget-object v1, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->mContext:Landroid/content/Context;

    const v2, 0x7f0a06f3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v0}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->addExtraTouchArea()V

    iget-object v0, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;

    iget-object v1, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->mContext:Landroid/content/Context;

    const v2, 0x7f0a06f4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v0}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->addExtraTouchArea()V

    iget-object v0, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v0, p0}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->setParent(Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;)V

    iget-object v0, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;

    iget-object v1, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->setWidgetTypeTag(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v0, p0}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->setParent(Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;)V

    iget-object v0, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;

    iget-object v1, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->setWidgetTypeTag(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v0}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->updateHandle()V

    iget-object v0, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v0}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->updateHandle()V

    return-void
.end method

.method public log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "IncomingCallImageWidget"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    invoke-virtual {p0}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->updateLayout()V

    return-void
.end method

.method public reset()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v0, v2}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->enableArrowAnimation(Z)V

    iget-object v0, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;

    sget-object v1, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle$HandleState;->NORMAL:Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    invoke-virtual {v0, v1}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->setHandleState(Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle$HandleState;)V

    iget-object v0, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v0, v2}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->enableArrowAnimation(Z)V

    iget-object v0, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;

    sget-object v1, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle$HandleState;->NORMAL:Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    invoke-virtual {v0, v1}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->setHandleState(Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle$HandleState;)V

    return-void
.end method

.method protected setGrabbedState(I)V
    .locals 2

    iget v0, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->mGrabbedState:I

    if-eq p1, v0, :cond_1

    iput p1, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->mGrabbedState:I

    iget v0, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->mGrabbedState:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->mOnTriggerListener:Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget$OnTriggerListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->mOnTriggerListener:Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget$OnTriggerListener;

    iget v1, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->mGrabbedState:I

    invoke-interface {v0, p0, v1}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget$OnTriggerListener;->onGrabbedStateChange(Landroid/view/View;I)V

    :cond_1
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;

    sget-object v1, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle$HandleState;->DEACTIVE:Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    invoke-virtual {v0, v1}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->setHandleState(Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle$HandleState;)V

    iget-object v0, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->mLeftBottomHandle:Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->mLeftBottomHandle:Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;

    sget-object v1, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle$HandleState;->DEACTIVE:Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    invoke-virtual {v0, v1}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->setHandleState(Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle$HandleState;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;

    sget-object v1, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle$HandleState;->DEACTIVE:Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    invoke-virtual {v0, v1}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->setHandleState(Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle$HandleState;)V

    iget-object v0, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;

    sget-object v1, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle$HandleState;->DEACTIVE:Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    invoke-virtual {v0, v1}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->setHandleState(Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle$HandleState;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;

    sget-object v1, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle$HandleState;->DEACTIVE:Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    invoke-virtual {v0, v1}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->setHandleState(Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle$HandleState;)V

    iget-object v0, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->mLeftBottomHandle:Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->mLeftBottomHandle:Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;

    sget-object v1, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle$HandleState;->DEACTIVE:Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    invoke-virtual {v0, v1}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->setHandleState(Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle$HandleState;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;

    sget-object v1, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle$HandleState;->NORMAL:Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    invoke-virtual {v0, v1}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->setHandleState(Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle$HandleState;)V

    iget-object v0, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;

    sget-object v1, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle$HandleState;->NORMAL:Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    invoke-virtual {v0, v1}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->setHandleState(Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle$HandleState;)V

    iget-object v0, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->mLeftBottomHandle:Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->mLeftBottomHandle:Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;

    sget-object v1, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle$HandleState;->NORMAL:Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    invoke-virtual {v0, v1}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->setHandleState(Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle$HandleState;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setLeftHintText(I)V
    .locals 0

    return-void
.end method

.method public setOnTriggerListener(Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget$OnTriggerListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->mOnTriggerListener:Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget$OnTriggerListener;

    return-void
.end method

.method public setRightHintText(I)V
    .locals 0

    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->reset()V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method updateIncomingCallHelpDescription()V
    .locals 6

    const-string v4, "incoming_call_widget_description_enable"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->mIncomingCallHelpDescription:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLeft()I

    move-result v1

    iget-object v4, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->mIncomingCallHelpDescription:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getRight()I

    move-result v2

    iget-object v4, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v4}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->getTop()I

    move-result v4

    iget-object v5, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v5}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->getHeight()I

    move-result v5

    mul-int/lit8 v5, v5, 0x16

    div-int/lit8 v5, v5, 0x64

    add-int v3, v4, v5

    iget-object v4, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->mIncomingCallHelpDescription:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getTop()I

    move-result v4

    iget-object v5, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->mIncomingCallHelpDescription:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getHeight()I

    move-result v5

    add-int v0, v4, v5

    iget-object v4, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->mIncomingCallHelpDescription:Landroid/widget/TextView;

    invoke-virtual {v4, v1, v3, v2, v0}, Landroid/widget/TextView;->layout(IIII)V

    :cond_0
    return-void
.end method

.method protected updateLayout()V
    .locals 18

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v13}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->getWidth()I

    move-result v13

    int-to-double v14, v13

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->marginMagicNumber:D

    move-wide/from16 v16, v0

    div-double v14, v14, v16

    double-to-int v6, v14

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0d015d

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v13

    float-to-int v3, v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0d015e

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v13

    float-to-int v7, v13

    const/4 v2, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0d015f

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v13

    float-to-int v11, v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0d0160

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v13

    float-to-int v12, v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0d0161

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v13

    float-to-int v10, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v13}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->getLeft()I

    move-result v13

    sub-int/2addr v13, v6

    div-int/lit8 v14, v6, 0xa

    sub-int v4, v13, v14

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v13}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->getLeft()I

    move-result v13

    add-int/2addr v13, v6

    div-int/lit8 v14, v6, 0xa

    add-int v8, v13, v14

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v13}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->getTop()I

    move-result v13

    div-int/lit8 v14, v6, 0x7

    add-int v5, v13, v14

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v13}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->getTop()I

    move-result v13

    div-int/lit8 v14, v6, 0x7

    add-int v9, v13, v14

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v14}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->getWidth()I

    move-result v14

    add-int/2addr v14, v4

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v15}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->getHeight()I

    move-result v15

    add-int/2addr v15, v5

    invoke-virtual {v13, v4, v5, v14, v15}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->layout(IIII)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v14}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->getWidth()I

    move-result v14

    add-int/2addr v14, v8

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v15}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->getHeight()I

    move-result v15

    add-int/2addr v15, v9

    invoke-virtual {v13, v8, v9, v14, v15}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->layout(IIII)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->mLeftBottomHandle:Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->mLeftBottomHandle:Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->setVisibility(I)V

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->updateIncomingCallHelpDescription()V

    return-void
.end method

.method public declared-synchronized vibrate(J)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->mVibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->mVibrator:Landroid/os/Vibrator;

    :cond_0
    iget-boolean v0, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->mUseVibate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    const-wide/16 v0, 0x1e

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0, p1, p2}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

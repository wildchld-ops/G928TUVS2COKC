.class public Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "TapAndHoldDelayCustomFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static isInFront:Ljava/lang/Boolean;


# instance fields
.field private base_time:J

.field private mDescription:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mRunnable:Ljava/lang/Runnable;

.field private mSaveBttn:Lcom/android/settings/widget/BottomBarButton;

.field private mShownDialogId:I

.field private mTabAndHoldView:Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;

.field private mTextViewPressTime:Landroid/widget/TextView;

.field private mTextViewSec:Landroid/widget/TextView;

.field private mcancelBttn:Lcom/android/settings/widget/BottomBarButton;

.field private press_time:J

.field private value_spacing:F

.field private value_textSize:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->isInFront:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->base_time:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->press_time:J

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment$1;-><init>(Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;)Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mTabAndHoldView:Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;)Lcom/android/settings/widget/BottomBarButton;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mSaveBttn:Lcom/android/settings/widget/BottomBarButton;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->base_time:J

    return-wide v0
.end method

.method static synthetic access$202(Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->base_time:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->press_time:J

    return-wide v0
.end method

.method static synthetic access$302(Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->press_time:J

    return-wide p1
.end method

.method static synthetic access$400(Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mTextViewPressTime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mTextViewSec:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600()Ljava/lang/Boolean;
    .locals 1

    sget-object v0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->isInFront:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->showDialog(I)V

    return-void
.end method

.method private final isMobileKeyboardCovered()Z
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    :try_start_0
    const-class v4, Landroid/content/res/Configuration;

    const-string v5, "mobileKeyboardCovered"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const-class v4, Landroid/content/res/Configuration;

    const-string v5, "MOBILEKEYBOARD_COVERED_YES"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-ne v4, v5, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v4

    goto :goto_0

    :catch_1
    move-exception v4

    goto :goto_0

    :catch_2
    move-exception v4

    goto :goto_0
.end method

.method private updateLongPressTimeOut(I)V
    .locals 3

    const-string v0, "TapAndHoldDelayCustomFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saved : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "long_press_timeout"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method


# virtual methods
.method public initDP()V
    .locals 5

    const/4 v4, 0x1

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0d0020

    invoke-virtual {v1, v3, v0, v4}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    iget v3, v0, Landroid/util/TypedValue;->data:I

    invoke-static {v3}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v3

    iput v3, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->value_textSize:F

    const v3, 0x7f0d0021

    invoke-virtual {v1, v3, v0, v4}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    iget v3, v0, Landroid/util/TypedValue;->data:I

    invoke-static {v3}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v2

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v4, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    iput v3, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->value_spacing:F

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    invoke-virtual {p0}, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->getView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment$2;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment$2;-><init>(Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v2, 0x1

    packed-switch p2, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :pswitch_0
    iget v1, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mShownDialogId:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mTabAndHoldView:Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;

    invoke-virtual {v1}, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->getTouchTime()J

    move-result-wide v2

    long-to-int v0, v2

    invoke-direct {p0, v0}, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->updateLongPressTimeOut(I)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->finish()V

    :cond_0
    :goto_0
    return-void

    :pswitch_1
    iget v1, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mShownDialogId:I

    if-ne v1, v2, :cond_0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    :pswitch_2
    iget v1, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mShownDialogId:I

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->finish()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v1, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mSaveBttn:Lcom/android/settings/widget/BottomBarButton;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mTabAndHoldView:Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;

    invoke-virtual {v1}, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->getTouchTime()J

    move-result-wide v2

    long-to-int v0, v2

    invoke-direct {p0, v0}, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->updateLongPressTimeOut(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->finish()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6

    invoke-virtual {p0}, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->getView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->isMobileKeyboardCovered()Z

    move-result v3

    if-eqz v3, :cond_0

    const v3, 0x7f0401e1

    invoke-virtual {v0, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    :goto_0
    const v3, 0x7f10042d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;

    iput-object v3, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mTabAndHoldView:Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;

    const v3, 0x7f10042f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/settings/widget/BottomBarButton;

    iput-object v3, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mcancelBttn:Lcom/android/settings/widget/BottomBarButton;

    iget-object v3, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mcancelBttn:Lcom/android/settings/widget/BottomBarButton;

    invoke-virtual {v3, p0}, Lcom/android/settings/widget/BottomBarButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f100430

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/settings/widget/BottomBarButton;

    iput-object v3, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mSaveBttn:Lcom/android/settings/widget/BottomBarButton;

    iget-object v3, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mSaveBttn:Lcom/android/settings/widget/BottomBarButton;

    invoke-virtual {v3, p0}, Lcom/android/settings/widget/BottomBarButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f100429

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mDescription:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mDescription:Landroid/widget/TextView;

    const/4 v4, 0x1

    iget v5, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->value_textSize:F

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v3, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mDescription:Landroid/widget/TextView;

    iget v4, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->value_spacing:F

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setLineSpacing(FF)V

    const v3, 0x7f10042a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mTextViewPressTime:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mTextViewPressTime:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v3, 0x7f10042c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mTextViewSec:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mTextViewSec:Landroid/widget/TextView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->base_time:J

    iget-object v3, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v3, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mTabAndHoldView:Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;

    invoke-virtual {v3}, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->refresh()V

    return-void

    :cond_0
    const v3, 0x7f0401df

    invoke-virtual {v0, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    goto/16 :goto_0
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 7

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    const/4 v4, 0x0

    :goto_0
    return-object v4

    :pswitch_0
    const/4 v4, 0x1

    iput v4, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mShownDialogId:I

    const v4, 0x7f0a0a0a

    invoke-virtual {p0, v4}, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0a0a0b

    invoke-virtual {p0, v4}, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0a06a2

    invoke-virtual {v4, v5, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/high16 v5, 0x1040000

    invoke-virtual {v4, v5, p0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0a06a3

    invoke-virtual {v4, v5, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    move-object v4, v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->initDP()V

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->isMobileKeyboardCovered()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0401e1

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    :goto_0
    const v1, 0x7f10042d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;

    iput-object v1, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mTabAndHoldView:Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;

    const v1, 0x7f10042f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/settings/widget/BottomBarButton;

    iput-object v1, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mcancelBttn:Lcom/android/settings/widget/BottomBarButton;

    iget-object v1, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mcancelBttn:Lcom/android/settings/widget/BottomBarButton;

    invoke-virtual {v1, p0}, Lcom/android/settings/widget/BottomBarButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f100430

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/settings/widget/BottomBarButton;

    iput-object v1, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mSaveBttn:Lcom/android/settings/widget/BottomBarButton;

    iget-object v1, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mSaveBttn:Lcom/android/settings/widget/BottomBarButton;

    invoke-virtual {v1, p0}, Lcom/android/settings/widget/BottomBarButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f100429

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mDescription:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mDescription:Landroid/widget/TextView;

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->value_textSize:F

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v1, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mDescription:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->value_spacing:F

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setLineSpacing(FF)V

    const v1, 0x7f10042a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mTextViewPressTime:Landroid/widget/TextView;

    const v1, 0x7f10042c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mTextViewSec:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mTextViewSec:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v0

    :cond_0
    const v1, 0x7f0401df

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->isInFront:Ljava/lang/Boolean;

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mTabAndHoldView:Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->checkAndSaveState()V

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0a09

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->isInFront:Ljava/lang/Boolean;

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    return-void
.end method

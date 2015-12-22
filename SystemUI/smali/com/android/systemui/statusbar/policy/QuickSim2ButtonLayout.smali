.class public Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;
.super Landroid/widget/LinearLayout;
.source "QuickSim2ButtonLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout$PreferedVoiceObserver;
    }
.end annotation


# static fields
.field private static final QuickpanelSimImage:[I

.field private static final TAG:Ljava/lang/String; = "QuickSim2Button"

.field private static toastAlert:Landroid/widget/Toast;


# instance fields
.field private carrierText:Ljava/lang/String;

.field private currSimId:I

.field private mAirplaneMode:I

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mNetworkNameDefault:Ljava/lang/String;

.field private mNetworkNameSeparator:Ljava/lang/String;

.field private mPlmn:Ljava/lang/String;

.field private mPreferedVoice:I

.field private mPreferedVoiceObserver:Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout$PreferedVoiceObserver;

.field private mQuickSim2CarrierText:Landroid/widget/TextView;

.field private mQuickSim2Icon:Landroid/widget/ImageView;

.field private mQuickSim2Text:Landroid/widget/TextView;

.field private mShowPlmn:Z

.field private mShowSpn:Z

.field private mSpn:Ljava/lang/String;

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private phoneId:I

.field private simActive:I

.field private subId:I

.field private telephonyManager:Landroid/telephony/TelephonyManager;

.field private useSubID:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->QuickpanelSimImage:[I

    return-void

    :array_0
    .array-data 4
        0x7f0203b7
        0x7f0203b8
        0x7f0203b0
        0x7f0203b6
        0x7f0203b4
        0x7f0203b3
        0x7f0203b2
        0x7f0203b5
        0x7f0203b1
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v0, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mAirplaneMode:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mPreferedVoice:I

    new-instance v0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout$1;-><init>(Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->subId:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->subId:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->phoneId:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mAirplaneMode:I

    return v0
.end method

.method static synthetic access$1002(Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mAirplaneMode:I

    return p1
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->phoneId:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mPreferedVoice:I

    return v0
.end method

.method static synthetic access$1202(Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mPreferedVoice:I

    return p1
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->updateDualSimUiBySettings(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mQuickSim2Text:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->carrierText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->carrierText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mNetworkNameDefault:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mNetworkNameDefault:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->getPhoneId(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mShowSpn:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mShowSpn:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mSpn:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mSpn:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mShowPlmn:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mShowPlmn:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mPlmn:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mPlmn:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;ZLjava/lang/String;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->currSimId:I

    return v0
.end method

.method static synthetic access$902(Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->currSimId:I

    return p1
.end method

.method private getPhoneId(I)I
    .locals 1

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    return v0
.end method

.method private isIdleBothSIM()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v3

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->isIdle(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v3

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->isIdle(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, "QuickSim2Button"

    const-string v2, "isIdle both SIM : true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    const-string v0, "QuickSim2Button"

    const-string v2, "isIdle both SIM : false"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_0
.end method

.method private updateDualSimUiBySettings(ILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne p1, v3, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mQuickSim2Icon:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mQuickSim2Icon:Landroid/widget/ImageView;

    sget-object v2, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->QuickpanelSimImage:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    if-eqz p3, :cond_1

    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CTC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-ne p1, v3, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mQuickSim2CarrierText:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mQuickSim2CarrierText:Landroid/widget/TextView;

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-ne p1, v3, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mQuickSim2Text:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mQuickSim2Text:Landroid/widget/TextView;

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;)V
    .locals 5

    const-string v2, "QuickSim2Button"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateNetworkName showSpn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " spn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " showPlmn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " plmn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    :cond_0
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mNetworkNameSeparator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    :cond_2
    if-eqz v0, :cond_4

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->carrierText:Ljava/lang/String;

    :goto_0
    const-string v2, "QuickSim2Button"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "carrierText : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->carrierText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CTC"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->carrierText:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->setMultisimCarrierText(Ljava/lang/String;I)V

    :cond_3
    return-void

    :cond_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mNetworkNameDefault:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->carrierText:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    const-string v4, "QuickSim2Button"

    const-string v5, "onAttachedToWindow()"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const v4, 0x7f0e0244

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mQuickSim2Text:Landroid/widget/TextView;

    const v4, 0x7f0e0245

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mQuickSim2CarrierText:Landroid/widget/TextView;

    const v4, 0x7f0e0243

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mQuickSim2Icon:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mContext:Landroid/content/Context;

    const v5, 0x1040395

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mNetworkNameDefault:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mContext:Landroid/content/Context;

    const v5, 0x7f0d0234

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mNetworkNameSeparator:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "select_icon_2"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "select_name_2"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v4

    const-string v5, "CTC"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz v3, :cond_1

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mQuickSim2CarrierText:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mQuickSim2Text:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mContext:Landroid/content/Context;

    const v6, 0x7f0d0208

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mQuickSim2Icon:Landroid/widget/ImageView;

    sget-object v5, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->QuickpanelSimImage:[I

    aget v5, v5, v1

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {p0, p0}, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, p0}, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v4, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.intent.action.ACTION_DEFAULT_VOICE_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "com.samsung.settings.SIMCARD_MGT"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "phone2_on"

    invoke-static {v4, v5, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoicePhoneId()I

    move-result v4

    iput v4, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->currSimId:I

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "airplane_mode_on"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mAirplaneMode:I

    sget-boolean v4, Lcom/android/systemui/statusbar/Feature;->CHN:Z

    if-nez v4, :cond_0

    sget-boolean v4, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v4, :cond_0

    new-instance v4, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout$PreferedVoiceObserver;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout$PreferedVoiceObserver;-><init>(Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;)V

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mPreferedVoiceObserver:Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout$PreferedVoiceObserver;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "prefered_voice_call"

    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mPreferedVoiceObserver:Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout$PreferedVoiceObserver;

    invoke-virtual {v4, v5, v7, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    iget v4, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mAirplaneMode:I

    if-ne v4, v8, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->setDeactiveSimUI()V

    :goto_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mContext:Landroid/content/Context;

    const-string v5, "statusbar"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/StatusBarManager;

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mStatusBarManager:Landroid/app/StatusBarManager;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mContext:Landroid/content/Context;

    const-string v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->telephonyManager:Landroid/telephony/TelephonyManager;

    return-void

    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mQuickSim2CarrierText:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mNetworkNameDefault:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_2
    if-eqz v3, :cond_3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mQuickSim2Text:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mQuickSim2Text:Landroid/widget/TextView;

    const-string v5, "SIM 2"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_4
    if-eqz v2, :cond_5

    sget-boolean v4, Lcom/android/systemui/statusbar/Feature;->CHN:Z

    if-nez v4, :cond_6

    sget-boolean v4, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v4, :cond_6

    iget v4, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mPreferedVoice:I

    if-nez v4, :cond_6

    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->setDeselectedSimUI()V

    goto :goto_2

    :cond_6
    iget v4, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->currSimId:I

    if-ne v4, v8, :cond_7

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->setSelectedSimUI()V

    goto :goto_2

    :cond_7
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->setDeselectedSimUI()V

    goto :goto_2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget v1, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mAirplaneMode:I

    if-ne v1, v4, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->toastAlert:Landroid/widget/Toast;

    sget-object v1, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->toastAlert:Landroid/widget/Toast;

    const v2, 0x7f0d0544

    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setText(I)V

    sget-object v1, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->toastAlert:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->setShowForAllUsers()V

    sget-object v1, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->toastAlert:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "phone2_on"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->simActive:I

    const-string v1, "QuickSim2Button"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClick 1 simActive="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->simActive:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->simActive:I

    if-ne v1, v4, :cond_0

    new-array v1, v6, [I

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->useSubID:[I

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoicePhoneId()I

    move-result v0

    const-string v1, "QuickSim2Button"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClick 2 currPhoneID is = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v0, v4, :cond_2

    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->CHN:Z

    if-nez v1, :cond_4

    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v1, :cond_4

    iget v1, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mPreferedVoice:I

    if-nez v1, :cond_4

    :cond_2
    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->useSubID:[I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->isIdleBothSIM()Z

    move-result v1

    if-nez v1, :cond_3

    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mIsCGGDuosCTC:Z

    if-eqz v1, :cond_5

    :cond_3
    const-string v1, "QuickSim2Button"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClick 3 set voice SIM as SIM 2 useSubID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->useSubID:[I

    aget v3, v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->useSubID:[I

    aget v2, v2, v5

    invoke-virtual {v1, v2}, Landroid/telephony/SubscriptionManager;->setDefaultVoiceSubId(I)V

    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->CHN:Z

    if-nez v1, :cond_4

    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "prefered_voice_call"

    invoke-static {v1, v2, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "default_maincard"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_5
    const-string v1, "QuickSim2Button"

    const-string v2, "onClick 3 Both SIM are not idle"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    const-string v0, "QuickSim2Button"

    const-string v1, "onDetachedFromWindow()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 4

    const-string v2, "CTC"

    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v2}, Landroid/app/StatusBarManager;->collapsePanels()V

    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "QuickSim2Button"

    const-string v3, "onLongClick() SIM02"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_1

    :try_start_0
    const-string v2, "com.sec.android.app.simcardmanagement"

    const-string v3, "com.sec.android.app.simcardmanagement.dsnetwork"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "showroaming"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "Booting"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "toDsnetwork"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const v2, 0x10008000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    const/4 v2, 0x1

    return v2

    :catch_0
    move-exception v0

    const-string v2, "QuickSim2Button"

    const-string v3, "activity not found"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setActivateSimUI()V
    .locals 4

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "phone2_on"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoicePhoneId()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->currSimId:I

    if-eqz v0, :cond_0

    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->CHN:Z

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v1, :cond_1

    iget v1, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mPreferedVoice:I

    if-nez v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->setDeselectedSimUI()V

    :goto_0
    return-void

    :cond_1
    iget v1, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->currSimId:I

    if-ne v1, v3, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->setSelectedSimUI()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->setDeselectedSimUI()V

    goto :goto_0
.end method

.method public setDeactiveSimUI()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mQuickSim2Text:Landroid/widget/TextView;

    const-string v1, "#ffffff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mQuickSim2CarrierText:Landroid/widget/TextView;

    const-string v1, "#ffffff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public setDeselectedSimUI()V
    .locals 10

    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->setEnabled(Z)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a00c5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    sget-boolean v5, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "current_sec_active_themepackage"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    ushr-int/lit8 v0, v4, 0x18

    shr-int/lit8 v5, v4, 0x10

    and-int/lit16 v3, v5, 0xff

    shr-int/lit8 v5, v4, 0x8

    and-int/lit16 v2, v5, 0xff

    and-int/lit16 v1, v4, 0xff

    int-to-double v6, v0

    const-wide v8, 0x3fe3333333333333L    # 0.6

    mul-double/2addr v6, v8

    double-to-int v5, v6

    invoke-static {v5, v3, v2, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    :cond_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mQuickSim2Text:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mQuickSim2CarrierText:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public setFocusedSimUI()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mQuickSim2Text:Landroid/widget/TextView;

    const-string v1, "#ffffff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mQuickSim2CarrierText:Landroid/widget/TextView;

    const-string v1, "#ffffff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public setMultisimCarrierText(Ljava/lang/String;I)V
    .locals 3

    const-string v0, "QuickSim2Button"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMultisimCarrierText:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",phoneId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mQuickSim2CarrierText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mQuickSim2CarrierText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setSelectedSimUI()V
    .locals 3

    const v2, 0x7f0a00c4

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mQuickSim2Text:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mQuickSim2CarrierText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public updateAirplaneMode()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mAirplaneMode:I

    const-string v0, "QuickSim2Button"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateAirplaneMode - mAirplaneMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mAirplaneMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mAirplaneMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->setDeactiveSimUI()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->setActivateSimUI()V

    goto :goto_0
.end method

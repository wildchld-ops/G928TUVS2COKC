.class public Lcom/android/incallui/secutils/CameraEffect;
.super Landroid/widget/RelativeLayout;
.source "CameraEffect.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mCancelEffectButton:Landroid/widget/ImageButton;

.field private mContext:Landroid/content/Context;

.field private mEffectBeauty:Landroid/widget/ImageButton;

.field private mEffectBeautyLayout:Landroid/view/ViewGroup;

.field private mEffectLayout:Landroid/view/ViewGroup;

.field private mEffectMono:Landroid/widget/ImageButton;

.field private mEffectMonoLayout:Landroid/view/ViewGroup;

.field private mEffectNegative:Landroid/widget/ImageButton;

.field private mEffectNegativeLayout:Landroid/view/ViewGroup;

.field private mEffectNone:Landroid/widget/ImageButton;

.field private mEffectNoneLayout:Landroid/view/ViewGroup;

.field private mEffectSepia:Landroid/widget/ImageButton;

.field private mEffectSepiaLayout:Landroid/view/ViewGroup;

.field private mEffectSolarise:Landroid/widget/ImageButton;

.field private mEffectSolariseLayout:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v3, 0x1

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v1, "CameraEffect constructor..."

    invoke-direct {p0, v1, v3}, Lcom/android/incallui/secutils/CameraEffect;->log(Ljava/lang/String;Z)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- this = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/incallui/secutils/CameraEffect;->log(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- context "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", attrs "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/incallui/secutils/CameraEffect;->log(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/incallui/secutils/CameraEffect;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040118

    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    return-void
.end method

.method private convertEffectTypeForPSVT(I)I
    .locals 1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_1
    const/16 v0, 0x10

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x4

    goto :goto_0

    :pswitch_5
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;
    .locals 1

    invoke-static {}, Lcom/android/incallui/secservice/SecVideoCallManager;->getInstance()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v0

    return-object v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "CameraEffect"

    invoke-static {v0, p1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "CameraEffect"

    invoke-static {v0, p1, p2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private setCameraEffect(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCameraEffect - effectType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/secutils/CameraEffect;->log(Ljava/lang/String;)V

    const-string v0, "camera_effect"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/incallui/secutils/CameraEffect;->convertEffectTypeForPSVT(I)I

    move-result p1

    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/secutils/CameraEffect;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/secservice/SecVideoCallManager;->setCameraEffect(I)V

    return-void
.end method

.method private updateSwitchButtonLayout()V
    .locals 1

    invoke-static {}, Lcom/android/incallui/secui/SecUiAdapter;->getInstance()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/secui/SecUiAdapter;->updateSwitchButtonLayout()V

    return-void
.end method


# virtual methods
.method public cancelEffect()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/incallui/secutils/CameraEffect;->setCameraEffect(I)V

    iget-object v0, p0, Lcom/android/incallui/secutils/CameraEffect;->mEffectLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/secutils/CameraEffect;->mEffectLayout:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/secutils/CameraEffect;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/incallui/secservice/SecVideoCallManager;->setShowingEffect(Z)V

    invoke-direct {p0}, Lcom/android/incallui/secutils/CameraEffect;->updateSwitchButtonLayout()V

    return-void
.end method

.method protected init()V
    .locals 1

    const v0, 0x7f1002ee

    invoke-virtual {p0, v0}, Lcom/android/incallui/secutils/CameraEffect;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/secutils/CameraEffect;->mEffectLayout:Landroid/view/ViewGroup;

    const v0, 0x7f1002ef

    invoke-virtual {p0, v0}, Lcom/android/incallui/secutils/CameraEffect;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/secutils/CameraEffect;->mEffectNoneLayout:Landroid/view/ViewGroup;

    const v0, 0x7f1002f2

    invoke-virtual {p0, v0}, Lcom/android/incallui/secutils/CameraEffect;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/secutils/CameraEffect;->mEffectBeautyLayout:Landroid/view/ViewGroup;

    const v0, 0x7f1002f5

    invoke-virtual {p0, v0}, Lcom/android/incallui/secutils/CameraEffect;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/secutils/CameraEffect;->mEffectMonoLayout:Landroid/view/ViewGroup;

    const v0, 0x7f1002f8

    invoke-virtual {p0, v0}, Lcom/android/incallui/secutils/CameraEffect;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/secutils/CameraEffect;->mEffectNegativeLayout:Landroid/view/ViewGroup;

    const v0, 0x7f1002fb

    invoke-virtual {p0, v0}, Lcom/android/incallui/secutils/CameraEffect;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/secutils/CameraEffect;->mEffectSepiaLayout:Landroid/view/ViewGroup;

    const v0, 0x7f1002fe

    invoke-virtual {p0, v0}, Lcom/android/incallui/secutils/CameraEffect;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/secutils/CameraEffect;->mEffectSolariseLayout:Landroid/view/ViewGroup;

    const v0, 0x7f1002f0

    invoke-virtual {p0, v0}, Lcom/android/incallui/secutils/CameraEffect;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/incallui/secutils/CameraEffect;->mEffectNone:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/android/incallui/secutils/CameraEffect;->mEffectNone:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/secutils/CameraEffect;->mEffectNone:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const v0, 0x7f1002f3

    invoke-virtual {p0, v0}, Lcom/android/incallui/secutils/CameraEffect;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/incallui/secutils/CameraEffect;->mEffectBeauty:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/android/incallui/secutils/CameraEffect;->mEffectBeauty:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/secutils/CameraEffect;->mEffectBeauty:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    const v0, 0x7f1002f6

    invoke-virtual {p0, v0}, Lcom/android/incallui/secutils/CameraEffect;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/incallui/secutils/CameraEffect;->mEffectMono:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/android/incallui/secutils/CameraEffect;->mEffectMono:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/secutils/CameraEffect;->mEffectMono:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    const v0, 0x7f1002f9

    invoke-virtual {p0, v0}, Lcom/android/incallui/secutils/CameraEffect;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/incallui/secutils/CameraEffect;->mEffectNegative:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/android/incallui/secutils/CameraEffect;->mEffectNegative:Landroid/widget/ImageButton;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/secutils/CameraEffect;->mEffectNegative:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    const v0, 0x7f1002fc

    invoke-virtual {p0, v0}, Lcom/android/incallui/secutils/CameraEffect;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/incallui/secutils/CameraEffect;->mEffectSepia:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/android/incallui/secutils/CameraEffect;->mEffectSepia:Landroid/widget/ImageButton;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/secutils/CameraEffect;->mEffectSepia:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    const v0, 0x7f1002ff

    invoke-virtual {p0, v0}, Lcom/android/incallui/secutils/CameraEffect;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/incallui/secutils/CameraEffect;->mEffectSolarise:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/android/incallui/secutils/CameraEffect;->mEffectSolarise:Landroid/widget/ImageButton;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/secutils/CameraEffect;->mEffectSolarise:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    const v0, 0x7f100301

    invoke-virtual {p0, v0}, Lcom/android/incallui/secutils/CameraEffect;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/incallui/secutils/CameraEffect;->mCancelEffectButton:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/android/incallui/secutils/CameraEffect;->mCancelEffectButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/secutils/CameraEffect;->mCancelEffectButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick(View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v4}, Lcom/android/incallui/secutils/CameraEffect;->log(Ljava/lang/String;Z)V

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    invoke-direct {p0, v3}, Lcom/android/incallui/secutils/CameraEffect;->setCameraEffect(I)V

    goto :goto_0

    :sswitch_1
    invoke-direct {p0, v4}, Lcom/android/incallui/secutils/CameraEffect;->setCameraEffect(I)V

    goto :goto_0

    :sswitch_2
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/incallui/secutils/CameraEffect;->setCameraEffect(I)V

    goto :goto_0

    :sswitch_3
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/android/incallui/secutils/CameraEffect;->setCameraEffect(I)V

    goto :goto_0

    :sswitch_4
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/android/incallui/secutils/CameraEffect;->setCameraEffect(I)V

    goto :goto_0

    :sswitch_5
    const/4 v1, 0x5

    invoke-direct {p0, v1}, Lcom/android/incallui/secutils/CameraEffect;->setCameraEffect(I)V

    goto :goto_0

    :sswitch_6
    invoke-direct {p0, v3}, Lcom/android/incallui/secutils/CameraEffect;->setCameraEffect(I)V

    invoke-virtual {p0}, Lcom/android/incallui/secutils/CameraEffect;->cancelEffect()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f1002f0 -> :sswitch_0
        0x7f1002f3 -> :sswitch_1
        0x7f1002f6 -> :sswitch_2
        0x7f1002f9 -> :sswitch_3
        0x7f1002fc -> :sswitch_4
        0x7f1002ff -> :sswitch_5
        0x7f100301 -> :sswitch_6
    .end sparse-switch
.end method

.method protected onFinishInflate()V
    .locals 0

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    invoke-virtual {p0}, Lcom/android/incallui/secutils/CameraEffect;->init()V

    return-void
.end method

.method public showEffectLayout()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/secutils/CameraEffect;->mEffectLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/secutils/CameraEffect;->mEffectLayout:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/secutils/CameraEffect;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/incallui/secservice/SecVideoCallManager;->setShowingEffect(Z)V

    return-void
.end method

.class public Lcom/dragon/android/voiceime/ui/VoiceDialog;
.super Ljava/lang/Object;
.source "VoiceDialog.java"


# static fields
.field private static final DEBUG:Z = false

.field public static final SHOW_VOICE_TOS_DIALOG:I = 0x0

.field private static final TAG:Ljava/lang/String; = "VoiceDialog"

.field private static mInstance:Lcom/dragon/android/voiceime/ui/VoiceDialog;


# instance fields
.field private mInputManager:Lcom/ime/framework/common/InputManager;

.field private mLegalInforDialog:Landroid/app/AlertDialog;

.field private mNetWorkDialog:Landroid/app/AlertDialog;

.field private mRepository:Lcom/ime/framework/repository/Repository;

.field private mSp:Landroid/content/SharedPreferences;

.field private mTosDialog:Landroid/app/AlertDialog;

.field mTosHandler:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dragon/android/voiceime/ui/VoiceDialog;->mRepository:Lcom/ime/framework/repository/Repository;

    new-instance v0, Lcom/dragon/android/voiceime/ui/VoiceDialog$3;

    invoke-direct {v0, p0}, Lcom/dragon/android/voiceime/ui/VoiceDialog$3;-><init>(Lcom/dragon/android/voiceime/ui/VoiceDialog;)V

    iput-object v0, p0, Lcom/dragon/android/voiceime/ui/VoiceDialog;->mTosHandler:Landroid/os/Handler;

    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->getInstance()Lcom/ime/framework/common/InputManager;

    move-result-object v0

    iput-object v0, p0, Lcom/dragon/android/voiceime/ui/VoiceDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/VoiceDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->getRepository()Lcom/ime/framework/repository/Repository;

    move-result-object v0

    iput-object v0, p0, Lcom/dragon/android/voiceime/ui/VoiceDialog;->mRepository:Lcom/ime/framework/repository/Repository;

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/VoiceDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/dragon/android/voiceime/ui/VoiceDialog;->mSp:Landroid/content/SharedPreferences;

    return-void
.end method

.method static synthetic access$000(Lcom/dragon/android/voiceime/ui/VoiceDialog;)Landroid/content/SharedPreferences;
    .locals 1

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/VoiceDialog;->mSp:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dragon/android/voiceime/ui/VoiceDialog;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/VoiceDialog;->mTosDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$200(Lcom/dragon/android/voiceime/ui/VoiceDialog;)Lcom/ime/framework/common/InputManager;
    .locals 1

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/VoiceDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/dragon/android/voiceime/ui/VoiceDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/dragon/android/voiceime/ui/VoiceDialog;->showVoiceTosDialog()V

    return-void
.end method

.method static synthetic access$400(Lcom/dragon/android/voiceime/ui/VoiceDialog;)Z
    .locals 1

    invoke-direct {p0}, Lcom/dragon/android/voiceime/ui/VoiceDialog;->checkVoiceNetWorkDialog()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/dragon/android/voiceime/ui/VoiceDialog;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/VoiceDialog;->mLegalInforDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$600(Lcom/dragon/android/voiceime/ui/VoiceDialog;)Lcom/ime/framework/repository/Repository;
    .locals 1

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/VoiceDialog;->mRepository:Lcom/ime/framework/repository/Repository;

    return-object v0
.end method

.method private checkVoiceNetWorkDialog()Z
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/dragon/android/voiceime/ui/VoiceDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/touchtype_fluency/service/util/NetworkUtil;->isInternetAvailable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/dragon/android/voiceime/ui/VoiceDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/ime/framework/util/Utils;->isWiFiOnlyDevice(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/dragon/android/voiceime/ui/VoiceDialog;->showVoiceNetworkErrorDialog(ZZ)V

    :goto_0
    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    invoke-virtual {p0, v2, v2}, Lcom/dragon/android/voiceime/ui/VoiceDialog;->showVoiceNetworkErrorDialog(ZZ)V

    goto :goto_0
.end method

.method public static getInstance()Lcom/dragon/android/voiceime/ui/VoiceDialog;
    .locals 1

    sget-object v0, Lcom/dragon/android/voiceime/ui/VoiceDialog;->mInstance:Lcom/dragon/android/voiceime/ui/VoiceDialog;

    if-nez v0, :cond_0

    new-instance v0, Lcom/dragon/android/voiceime/ui/VoiceDialog;

    invoke-direct {v0}, Lcom/dragon/android/voiceime/ui/VoiceDialog;-><init>()V

    sput-object v0, Lcom/dragon/android/voiceime/ui/VoiceDialog;->mInstance:Lcom/dragon/android/voiceime/ui/VoiceDialog;

    :cond_0
    sget-object v0, Lcom/dragon/android/voiceime/ui/VoiceDialog;->mInstance:Lcom/dragon/android/voiceime/ui/VoiceDialog;

    return-object v0
.end method

.method private showVoiceTosDialog()V
    .locals 11

    const/4 v10, -0x1

    iget-object v7, p0, Lcom/dragon/android/voiceime/ui/VoiceDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->isKeyGuardScreen()Z

    move-result v7

    if-eqz v7, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/dragon/android/voiceime/ui/VoiceDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v0, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x104000a

    new-instance v8, Lcom/dragon/android/voiceime/ui/VoiceDialog$1;

    invoke-direct {v8, p0}, Lcom/dragon/android/voiceime/ui/VoiceDialog$1;-><init>(Lcom/dragon/android/voiceime/ui/VoiceDialog;)V

    invoke-virtual {v0, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v7, Lcom/dragon/android/voiceime/ui/VoiceDialog$2;

    invoke-direct {v7, p0}, Lcom/dragon/android/voiceime/ui/VoiceDialog$2;-><init>(Lcom/dragon/android/voiceime/ui/VoiceDialog;)V

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/dragon/android/voiceime/ui/VoiceDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    const v8, 0x7f030034

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Lcom/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    iget-object v7, p0, Lcom/dragon/android/voiceime/ui/VoiceDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget-object v7, v7, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v7}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    const-string v5, "voicetos_en.html"

    const-string v7, "KR"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v5, "voicetos_kor.html"

    :cond_1
    :goto_1
    const v7, 0x7f100066

    invoke-virtual {v1, v7}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/ime/framework/view/HtmlTextView;

    iget-object v7, p0, Lcom/dragon/android/voiceime/ui/VoiceDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b008c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v2, v7}, Lcom/ime/framework/view/HtmlTextView;->setTextColor(I)V

    const-string v7, "dragon_voice_tos/"

    invoke-virtual {v2, v7, v5}, Lcom/ime/framework/view/HtmlTextView;->setHtmlFromAsset(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v7, 0x7f0d0394

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/dragon/android/voiceime/ui/VoiceDialog;->mTosDialog:Landroid/app/AlertDialog;

    iget-object v7, p0, Lcom/dragon/android/voiceime/ui/VoiceDialog;->mTosDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget-object v7, p0, Lcom/dragon/android/voiceime/ui/VoiceDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->getValidWindowToken()Landroid/os/IBinder;

    move-result-object v7

    iput-object v7, v4, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    iget-object v7, v4, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-nez v7, :cond_5

    const-string v7, "VoiceDialog"

    const-string v8, "window token is null"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_2
    const-string v7, "CN"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v5, "voicetos_cn.html"

    goto :goto_1

    :cond_3
    const-string v7, "TW"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "HK"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_4
    const-string v5, "voicetos_tw.html"

    goto :goto_1

    :cond_5
    const/16 v7, 0x3eb

    iput v7, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {v6, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/high16 v7, 0x20000

    invoke-virtual {v6, v7}, Landroid/view/Window;->addFlags(I)V

    iget-object v7, p0, Lcom/dragon/android/voiceime/ui/VoiceDialog;->mTosDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    invoke-virtual {v6, v10, v10}, Landroid/view/Window;->setLayout(II)V

    iget-object v7, p0, Lcom/dragon/android/voiceime/ui/VoiceDialog;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v8, "IS_DRAGON_VOICE_TOS_SHOWN"

    const/4 v9, 0x1

    invoke-interface {v7, v8, v9}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    goto/16 :goto_0
.end method


# virtual methods
.method public checkVoiceTos()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/VoiceDialog;->mTosHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/VoiceDialog;->mTosHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/dragon/android/voiceime/ui/VoiceDialog;->mTosHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public dismissVoiceTosDialog()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/VoiceDialog;->mTosDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/VoiceDialog;->mTosDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/VoiceDialog;->mTosDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/VoiceDialog;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v1, "IS_DRAGON_VOICE_TOS_SHOWN"

    invoke-interface {v0, v1, v2}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dragon/android/voiceime/ui/VoiceDialog;->mTosDialog:Landroid/app/AlertDialog;

    :cond_0
    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/VoiceDialog;->mTosHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/VoiceDialog;->mTosHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    return-void
.end method

.method public showVoiceLegalInfomation()V
    .locals 20

    new-instance v2, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dragon/android/voiceime/ui/VoiceDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v16, 0x7f03001b

    const/16 v17, 0x0

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v7, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    const v16, 0x7f100033

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    const v16, 0x7f100034

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    const v16, 0x7f0d0387

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setText(I)V

    const v16, 0x7f0d0388

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dragon/android/voiceime/ui/VoiceDialog;->mSp:Landroid/content/SharedPreferences;

    move-object/from16 v16, v0

    const-string v17, "dragon_voice_legal_information_checked"

    const/16 v18, 0x1

    invoke-interface/range {v16 .. v18}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    invoke-virtual {v3, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    new-instance v16, Lcom/dragon/android/voiceime/ui/VoiceDialog$4;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v3}, Lcom/dragon/android/voiceime/ui/VoiceDialog$4;-><init>(Lcom/dragon/android/voiceime/ui/VoiceDialog;Landroid/widget/CheckBox;)V

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v16, 0x7f0d038c

    new-instance v17, Lcom/dragon/android/voiceime/ui/VoiceDialog$5;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v3}, Lcom/dragon/android/voiceime/ui/VoiceDialog$5;-><init>(Lcom/dragon/android/voiceime/ui/VoiceDialog;Landroid/widget/CheckBox;)V

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v16, 0x1040000

    new-instance v17, Lcom/dragon/android/voiceime/ui/VoiceDialog$6;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/dragon/android/voiceime/ui/VoiceDialog$6;-><init>(Lcom/dragon/android/voiceime/ui/VoiceDialog;)V

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dragon/android/voiceime/ui/VoiceDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f0d03a6

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    const-string v17, "%s"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dragon/android/voiceime/ui/VoiceDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0d0008

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    new-instance v13, Landroid/text/SpannableString;

    invoke-direct {v13, v11}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const/4 v14, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dragon/android/voiceime/ui/VoiceDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v16

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v9

    const-string v16, "CN"

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_0

    const/16 v14, 0x75

    const/16 v6, 0x7a

    :goto_0
    new-instance v16, Lcom/dragon/android/voiceime/ui/VoiceDialog$1TouchableSpan;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/dragon/android/voiceime/ui/VoiceDialog$1TouchableSpan;-><init>(Lcom/dragon/android/voiceime/ui/VoiceDialog;)V

    const/16 v17, 0x21

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v13, v0, v14, v6, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v16, 0x7f0d038a

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/dragon/android/voiceime/ui/VoiceDialog;->mLegalInforDialog:Landroid/app/AlertDialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dragon/android/voiceime/ui/VoiceDialog;->mLegalInforDialog:Landroid/app/AlertDialog;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dragon/android/voiceime/ui/VoiceDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/ime/framework/common/InputManager;->getValidWindowToken()Landroid/os/IBinder;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v10, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    iget-object v0, v10, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    move-object/from16 v16, v0

    if-nez v16, :cond_4

    const-string v16, "VoiceDialog"

    const-string v17, "window token is null"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :cond_0
    const-string v16, "HK"

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1

    const/16 v14, 0x70

    const/16 v6, 0x75

    goto :goto_0

    :cond_1
    const-string v16, "TW"

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_2

    const/16 v14, 0x75

    const/16 v6, 0x7a

    goto :goto_0

    :cond_2
    const-string v16, "KR"

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_3

    const/16 v14, 0x92

    const/16 v6, 0x96

    goto/16 :goto_0

    :cond_3
    const/16 v14, 0x11b

    const/16 v6, 0x12f

    goto/16 :goto_0

    :cond_4
    const/16 v16, 0x3eb

    move/from16 v0, v16

    iput v0, v10, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {v15, v10}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/high16 v16, 0x20000

    invoke-virtual/range {v15 .. v16}, Landroid/view/Window;->addFlags(I)V

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dragon/android/voiceime/ui/VoiceDialog;->mLegalInforDialog:Landroid/app/AlertDialog;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dragon/android/voiceime/ui/VoiceDialog;->mLegalInforDialog:Landroid/app/AlertDialog;

    move-object/from16 v16, v0

    new-instance v17, Lcom/dragon/android/voiceime/ui/VoiceDialog$7;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/dragon/android/voiceime/ui/VoiceDialog$7;-><init>(Lcom/dragon/android/voiceime/ui/VoiceDialog;)V

    invoke-virtual/range {v16 .. v17}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dragon/android/voiceime/ui/VoiceDialog;->mRepository:Lcom/ime/framework/repository/Repository;

    move-object/from16 v16, v0

    const-string v17, "KEY_IS_DRAGON_VOICE_LAGELINFOMATION_DIALOG_SHOWN"

    const/16 v18, 0x1

    invoke-interface/range {v16 .. v18}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    goto :goto_1

    :catch_0
    move-exception v5

    invoke-virtual {v5}, Landroid/view/WindowManager$BadTokenException;->printStackTrace()V

    goto :goto_2
.end method

.method public showVoiceNetworkErrorDialog(ZZ)V
    .locals 5

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/dragon/android/voiceime/ui/VoiceDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x104000a

    new-instance v4, Lcom/dragon/android/voiceime/ui/VoiceDialog$8;

    invoke-direct {v4, p0}, Lcom/dragon/android/voiceime/ui/VoiceDialog$8;-><init>(Lcom/dragon/android/voiceime/ui/VoiceDialog;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    if-eqz p1, :cond_0

    const v3, 0x7f0d03a2

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    :goto_0
    if-eqz p2, :cond_1

    const v3, 0x7f0d03a3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    :goto_1
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/dragon/android/voiceime/ui/VoiceDialog;->mNetWorkDialog:Landroid/app/AlertDialog;

    iget-object v3, p0, Lcom/dragon/android/voiceime/ui/VoiceDialog;->mNetWorkDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget-object v3, p0, Lcom/dragon/android/voiceime/ui/VoiceDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->getValidWindowToken()Landroid/os/IBinder;

    move-result-object v3

    iput-object v3, v1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    iget-object v3, v1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-nez v3, :cond_3

    const-string v3, "VoiceDialog"

    const-string v4, "window token is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void

    :cond_0
    const v3, 0x7f0d0385

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    const v3, 0x7f0d03a4

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    :cond_2
    const v3, 0x7f0d03a5

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    :cond_3
    const/16 v3, 0x3eb

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/high16 v3, 0x20000

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    iget-object v3, p0, Lcom/dragon/android/voiceime/ui/VoiceDialog;->mNetWorkDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    iget-object v3, p0, Lcom/dragon/android/voiceime/ui/VoiceDialog;->mNetWorkDialog:Landroid/app/AlertDialog;

    new-instance v4, Lcom/dragon/android/voiceime/ui/VoiceDialog$9;

    invoke-direct {v4, p0}, Lcom/dragon/android/voiceime/ui/VoiceDialog$9;-><init>(Lcom/dragon/android/voiceime/ui/VoiceDialog;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    goto :goto_2
.end method

.method public voiceTosDialogIsShowing()Z
    .locals 1

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/VoiceDialog;->mTosDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/VoiceDialog;->mTosDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

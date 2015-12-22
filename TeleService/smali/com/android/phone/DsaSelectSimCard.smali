.class public Lcom/android/phone/DsaSelectSimCard;
.super Landroid/app/Activity;
.source "DsaSelectSimCard.java"


# static fields
.field public static mWaitDialog:Landroid/app/ProgressDialog;


# instance fields
.field public final dsaNumbers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field dsaset:Lcom/android/phone/DsaSetting;

.field items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCurrentStatus:I

.field private mDialogPause:Z

.field private mFromSetupWizard:Z

.field private mIsFirst:Z

.field private mIsRtl:Z

.field private mLeftSoftBtn:Landroid/widget/LinearLayout;

.field private mLeftSoftImage:Landroid/widget/ImageView;

.field private mLeftSoftText:Landroid/widget/TextView;

.field private mListView:Landroid/widget/ListView;

.field mListViewOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mRightSoftBtn:Landroid/widget/LinearLayout;

.field private mRightSoftImage:Landroid/widget/ImageView;

.field private mRightSoftText:Landroid/widget/TextView;

.field private mSoftLayout:Landroid/widget/LinearLayout;

.field private mSoftLayoutSW:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/DsaSelectSimCard;->mWaitDialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput v1, p0, Lcom/android/phone/DsaSelectSimCard;->mCurrentStatus:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/DsaSelectSimCard;->items:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/DsaSelectSimCard;->dsaNumbers:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/DsaSelectSimCard;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iput-boolean v1, p0, Lcom/android/phone/DsaSelectSimCard;->mDialogPause:Z

    new-instance v0, Lcom/android/phone/DsaSelectSimCard$10;

    invoke-direct {v0, p0}, Lcom/android/phone/DsaSelectSimCard$10;-><init>(Lcom/android/phone/DsaSelectSimCard;)V

    iput-object v0, p0, Lcom/android/phone/DsaSelectSimCard;->mListViewOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/DsaSelectSimCard;)I
    .locals 1

    iget v0, p0, Lcom/android/phone/DsaSelectSimCard;->mCurrentStatus:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/phone/DsaSelectSimCard;I)I
    .locals 0

    iput p1, p0, Lcom/android/phone/DsaSelectSimCard;->mCurrentStatus:I

    return p1
.end method

.method private dsaLog(Ljava/lang/String;)V
    .locals 1

    const-string v0, "DsaSelectSimCard"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public dismissDialog()V
    .locals 2

    const-string v0, "DsaSelectSimCard"

    const-string v1, "dismissDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/phone/DsaSelectSimCard;->mWaitDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/phone/DsaSelectSimCard;->mWaitDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/DsaSelectSimCard;->mWaitDialog:Landroid/app/ProgressDialog;

    :cond_0
    return-void
.end method

.method public displayDialog(I)V
    .locals 7

    const v6, 0x7f0a0623

    const v5, 0x7f0a00ea

    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string v0, "DsaSelectSimCard"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "displayDialog : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lcom/android/phone/DsaSelectSimCard;->mDialogPause:Z

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0, v6}, Lcom/android/phone/DsaSelectSimCard;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v5}, Lcom/android/phone/DsaSelectSimCard;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {p0, v0, v1, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    sput-object v0, Lcom/android/phone/DsaSelectSimCard;->mWaitDialog:Landroid/app/ProgressDialog;

    sget-object v0, Lcom/android/phone/DsaSelectSimCard;->mWaitDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    sget-object v0, Lcom/android/phone/DsaSelectSimCard;->mWaitDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/android/phone/DsaSelectSimCard$4;

    invoke-direct {v1, p0}, Lcom/android/phone/DsaSelectSimCard$4;-><init>(Lcom/android/phone/DsaSelectSimCard;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, v6}, Lcom/android/phone/DsaSelectSimCard;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v5}, Lcom/android/phone/DsaSelectSimCard;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {p0, v0, v1, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    sput-object v0, Lcom/android/phone/DsaSelectSimCard;->mWaitDialog:Landroid/app/ProgressDialog;

    sget-object v0, Lcom/android/phone/DsaSelectSimCard;->mWaitDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    sget-object v0, Lcom/android/phone/DsaSelectSimCard;->mWaitDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/android/phone/DsaSelectSimCard$5;

    invoke-direct {v1, p0}, Lcom/android/phone/DsaSelectSimCard$5;-><init>(Lcom/android/phone/DsaSelectSimCard;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public displayResultDialog()V
    .locals 14

    const v13, 0x7f0a0012

    const/4 v12, 0x1

    const/4 v11, 0x0

    const-string v9, "DsaSelectSimCard"

    const-string v10, "displayResultDialog"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/DsaSelectSimCard;->dismissDialog()V

    iput-boolean v11, p0, Lcom/android/phone/DsaSelectSimCard;->mDialogPause:Z

    new-instance v0, Lcom/android/phone/DsaResult;

    invoke-direct {v0}, Lcom/android/phone/DsaResult;-><init>()V

    invoke-virtual {v0}, Lcom/android/phone/DsaResult;->CheckDsaResult()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v9, "DsaSelectSimCard"

    const-string v10, "displayResultDialog [Activated Success]"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, "dsa_main"

    invoke-virtual {p0, v9, v11}, Lcom/android/phone/DsaSelectSimCard;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-static {v11}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "dsa_is_activate"

    invoke-static {v9, v10, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {v0, v12}, Lcom/android/phone/DsaResult;->makeResultInformation(I)Ljava/lang/String;

    move-result-object v6

    const-string v9, "dsa_result_dialog_success_is_checked"

    invoke-interface {v4, v9, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-nez v9, :cond_0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v9, 0x7f040036

    const/4 v10, 0x0

    invoke-virtual {v2, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    const v9, 0x7f1000aa

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v9, Landroid/app/AlertDialog$Builder;

    invoke-direct {v9, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v10, 0x7f0a0623

    invoke-virtual {p0, v10}, Lcom/android/phone/DsaSelectSimCard;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9, v11}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    new-instance v10, Lcom/android/phone/DsaSelectSimCard$7;

    invoke-direct {v10, p0}, Lcom/android/phone/DsaSelectSimCard$7;-><init>(Lcom/android/phone/DsaSelectSimCard;)V

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    invoke-virtual {p0, v13}, Lcom/android/phone/DsaSelectSimCard;->getString(I)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Lcom/android/phone/DsaSelectSimCard$6;

    invoke-direct {v11, p0}, Lcom/android/phone/DsaSelectSimCard$6;-><init>(Lcom/android/phone/DsaSelectSimCard;)V

    invoke-virtual {v9, v10, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/DsaSelectSimCard;->finish()V

    goto :goto_0

    :cond_1
    const-string v9, "DsaSelectSimCard"

    const-string v10, "displayResultDialog [Activated Failed]"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v11}, Lcom/android/phone/DsaResult;->makeResultInformation(I)Ljava/lang/String;

    move-result-object v1

    new-instance v9, Landroid/app/AlertDialog$Builder;

    invoke-direct {v9, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v10, 0x7f0a0624

    invoke-virtual {p0, v10}, Lcom/android/phone/DsaSelectSimCard;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9, v11}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    new-instance v10, Lcom/android/phone/DsaSelectSimCard$9;

    invoke-direct {v10, p0}, Lcom/android/phone/DsaSelectSimCard$9;-><init>(Lcom/android/phone/DsaSelectSimCard;)V

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    invoke-virtual {p0, v13}, Lcom/android/phone/DsaSelectSimCard;->getString(I)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Lcom/android/phone/DsaSelectSimCard$8;

    invoke-direct {v11, p0}, Lcom/android/phone/DsaSelectSimCard$8;-><init>(Lcom/android/phone/DsaSelectSimCard;)V

    invoke-virtual {v9, v10, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 17

    const-string v2, "DsaSelectSimCard"

    const-string v3, "onCreate"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v2, 0x7f040037

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/phone/DsaSelectSimCard;->setContentView(I)V

    const v2, 0x7f0a061f

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/phone/DsaSelectSimCard;->setTitle(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/DsaSelectSimCard;->items:Ljava/util/ArrayList;

    const v3, 0x7f0a0621

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/phone/DsaSelectSimCard;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/DsaSelectSimCard;->items:Ljava/util/ArrayList;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const v4, 0x7f0a0622

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/phone/DsaSelectSimCard;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const/4 v8, 0x2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v3, v4, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/DsaSelectSimCard;->items:Ljava/util/ArrayList;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const v4, 0x7f0a0622

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/phone/DsaSelectSimCard;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/4 v8, 0x2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v3, v4, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Landroid/widget/ArrayAdapter;

    const v2, 0x7f0400b1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/DsaSelectSimCard;->items:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v9, v0, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const v2, 0x7f1000ab

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/phone/DsaSelectSimCard;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/phone/DsaSelectSimCard;->mListView:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/DsaSelectSimCard;->mListView:Landroid/widget/ListView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setChoiceMode(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/DsaSelectSimCard;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v9}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/DsaSelectSimCard;->mListView:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/DsaSelectSimCard;->mListViewOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/DsaSelectSimCard;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    const-string v2, "ro.build.scafe"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v2, "amerinano"

    invoke-static {v10, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v14

    invoke-virtual {v11}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    const/4 v15, 0x1

    :goto_0
    const v2, 0x7f0d00db

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    if-eq v14, v15, :cond_6

    new-instance v1, Landroid/graphics/drawable/InsetDrawable;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/DsaSelectSimCard;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    :goto_1
    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/DsaSelectSimCard;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/DsaSelectSimCard;->getIntent()Landroid/content/Intent;

    move-result-object v13

    const-string v2, "DsaExtraInitial"

    const/4 v3, 0x0

    invoke-virtual {v13, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/phone/DsaSelectSimCard;->mIsFirst:Z

    const-string v2, "SecSetupWizard"

    const/4 v3, 0x0

    invoke-virtual {v13, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/phone/DsaSelectSimCard;->mFromSetupWizard:Z

    const-string v2, "DsaSelectSimCard"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mIsFirst : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/phone/DsaSelectSimCard;->mIsFirst:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mFromSetupWizard : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/phone/DsaSelectSimCard;->mFromSetupWizard:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v2, 0x7f1000a4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/phone/DsaSelectSimCard;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/phone/DsaSelectSimCard;->mSoftLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f10009d

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/phone/DsaSelectSimCard;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/phone/DsaSelectSimCard;->mSoftLayoutSW:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/phone/DsaSelectSimCard;->mIsFirst:Z

    if-eqz v2, :cond_7

    const v2, 0x7f1000b2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/phone/DsaSelectSimCard;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/phone/DsaSelectSimCard;->mLeftSoftBtn:Landroid/widget/LinearLayout;

    const v2, 0x7f1000b4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/phone/DsaSelectSimCard;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/phone/DsaSelectSimCard;->mLeftSoftText:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/DsaSelectSimCard;->mLeftSoftBtn:Landroid/widget/LinearLayout;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    const v2, 0x7f1000b5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/phone/DsaSelectSimCard;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/phone/DsaSelectSimCard;->mRightSoftBtn:Landroid/widget/LinearLayout;

    const v2, 0x7f1000b6

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/phone/DsaSelectSimCard;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/phone/DsaSelectSimCard;->mRightSoftText:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/DsaSelectSimCard;->mRightSoftBtn:Landroid/widget/LinearLayout;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    const v2, 0x7f1000b3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/phone/DsaSelectSimCard;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/phone/DsaSelectSimCard;->mLeftSoftImage:Landroid/widget/ImageView;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/phone/DsaSelectSimCard;->mRightSoftImage:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/DsaSelectSimCard;->mLeftSoftImage:Landroid/widget/ImageView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    :goto_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_8

    const/4 v2, 0x1

    :goto_3
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/phone/DsaSelectSimCard;->mIsRtl:Z

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/phone/DsaSelectSimCard;->mIsRtl:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/DsaSelectSimCard;->mLeftSoftImage:Landroid/widget/ImageView;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/DsaSelectSimCard;->mLeftSoftImage:Landroid/widget/ImageView;

    const v3, 0x7f02000e

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/DsaSelectSimCard;->mRightSoftImage:Landroid/widget/ImageView;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/DsaSelectSimCard;->mRightSoftImage:Landroid/widget/ImageView;

    const v3, 0x7f020010

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/DsaSelectSimCard;->mLeftSoftBtn:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/android/phone/DsaSelectSimCard$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/phone/DsaSelectSimCard$1;-><init>(Lcom/android/phone/DsaSelectSimCard;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/DsaSelectSimCard;->mRightSoftBtn:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/android/phone/DsaSelectSimCard$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/phone/DsaSelectSimCard$2;-><init>(Lcom/android/phone/DsaSelectSimCard;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Lcom/android/phone/DsaSetting;

    invoke-direct {v2}, Lcom/android/phone/DsaSetting;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/phone/DsaSelectSimCard;->dsaset:Lcom/android/phone/DsaSetting;

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/phone/DsaSelectSimCard;->mIsFirst:Z

    if-nez v2, :cond_3

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/phone/DsaSelectSimCard;->mFromSetupWizard:Z

    if-eqz v2, :cond_a

    :cond_3
    new-instance v12, Landroid/content/IntentFilter;

    invoke-direct {v12}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "com.android.phone.dsacomplete"

    invoke-virtual {v12, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v2, Lcom/android/phone/DsaSelectSimCard$3;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/phone/DsaSelectSimCard$3;-><init>(Lcom/android/phone/DsaSelectSimCard;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/phone/DsaSelectSimCard;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/DsaSelectSimCard;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v12}, Lcom/android/phone/DsaSelectSimCard;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/DsaSelectSimCard;->mLeftSoftText:Landroid/widget/TextView;

    const v3, 0x7f0a061d

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/DsaSelectSimCard;->mRightSoftText:Landroid/widget/TextView;

    const v3, 0x7f0a061e

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/phone/DsaSelectSimCard;->mFromSetupWizard:Z

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/DsaSelectSimCard;->mSoftLayout:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/DsaSelectSimCard;->mSoftLayoutSW:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_4
    :goto_4
    return-void

    :cond_5
    const/4 v15, 0x0

    goto/16 :goto_0

    :cond_6
    new-instance v1, Landroid/graphics/drawable/InsetDrawable;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/DsaSelectSimCard;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    goto/16 :goto_1

    :cond_7
    const v2, 0x7f1000ac

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/phone/DsaSelectSimCard;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/phone/DsaSelectSimCard;->mLeftSoftBtn:Landroid/widget/LinearLayout;

    const v2, 0x7f1000ae

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/phone/DsaSelectSimCard;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/phone/DsaSelectSimCard;->mLeftSoftText:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/DsaSelectSimCard;->mLeftSoftBtn:Landroid/widget/LinearLayout;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    const v2, 0x7f1000af

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/phone/DsaSelectSimCard;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/phone/DsaSelectSimCard;->mRightSoftBtn:Landroid/widget/LinearLayout;

    const v2, 0x7f1000b0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/phone/DsaSelectSimCard;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/phone/DsaSelectSimCard;->mRightSoftText:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/DsaSelectSimCard;->mRightSoftBtn:Landroid/widget/LinearLayout;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    const v2, 0x7f1000ad

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/phone/DsaSelectSimCard;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/phone/DsaSelectSimCard;->mLeftSoftImage:Landroid/widget/ImageView;

    const v2, 0x7f1000b1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/phone/DsaSelectSimCard;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/phone/DsaSelectSimCard;->mRightSoftImage:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/DsaSelectSimCard;->mLeftSoftImage:Landroid/widget/ImageView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/DsaSelectSimCard;->mRightSoftImage:Landroid/widget/ImageView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto/16 :goto_2

    :cond_8
    const/4 v2, 0x0

    goto/16 :goto_3

    :cond_9
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/phone/DsaSelectSimCard;->mIsFirst:Z

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/DsaSelectSimCard;->mSoftLayout:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/DsaSelectSimCard;->mSoftLayoutSW:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_4

    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/DsaSelectSimCard;->mSoftLayout:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/DsaSelectSimCard;->mSoftLayoutSW:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_4
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 7

    const/4 v6, 0x6

    const/4 v5, 0x1

    const/4 v1, 0x0

    const-string v2, "DsaSelectSimCard"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreateOptionsMenu : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/phone/DsaSelectSimCard;->mIsFirst:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/phone/DsaSelectSimCard;->mFromSetupWizard:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/DsaSelectSimCard;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    :cond_0
    iget-boolean v2, p0, Lcom/android/phone/DsaSelectSimCard;->mIsFirst:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/android/phone/DsaSelectSimCard;->mFromSetupWizard:Z

    if-nez v2, :cond_1

    const v2, 0x7f0a0283

    invoke-interface {p1, v1, v5, v5, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v2, 0x2

    const v3, 0x7f0a0282

    invoke-interface {p1, v1, v2, v5, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v1, 0x7f0a0578

    invoke-virtual {p0, v1}, Lcom/android/phone/DsaSelectSimCard;->setTitle(I)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    :cond_1
    return v1
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "DsaSelectSimCard"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/DsaSelectSimCard;->mDialogPause:Z

    iget-boolean v0, p0, Lcom/android/phone/DsaSelectSimCard;->mIsFirst:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/phone/DsaSelectSimCard;->mFromSetupWizard:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/phone/DsaSelectSimCard;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/phone/DsaSelectSimCard;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 5

    const/4 v2, 0x1

    const-string v3, "DsaSelectSimCard"

    const-string v4, "onKeyUp"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x4

    if-ne p1, v3, :cond_2

    iget-boolean v3, p0, Lcom/android/phone/DsaSelectSimCard;->mIsFirst:Z

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/DsaSelectSimCard;->getIntent()Landroid/content/Intent;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v3, "DsaExtraInitial"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "extra_init_dialog"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "extra_init_dialog"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_0
    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v3, "com.android.phone.DsaPhoneNumber"

    invoke-virtual {v1, p0, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/android/phone/DsaSelectSimCard;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return v2

    :cond_1
    iget-boolean v2, p0, Lcom/android/phone/DsaSelectSimCard;->mFromSetupWizard:Z

    if-eqz v2, :cond_2

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :sswitch_0
    invoke-virtual {p0}, Lcom/android/phone/DsaSelectSimCard;->finish()V

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0, v2}, Lcom/android/phone/DsaSelectSimCard;->softkeyRun1(Landroid/view/View;)V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0, v2}, Lcom/android/phone/DsaSelectSimCard;->softkeyRun2(Landroid/view/View;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_1
        0x102002c -> :sswitch_0
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 2

    const-string v0, "DsaSelectSimCard"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/DsaSelectSimCard;->dismissDialog()V

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v1, "DsaSelectSimCard"

    const-string v2, "onResume"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const-string v1, "SelectSimStatus"

    invoke-virtual {p0, v1, v3}, Lcom/android/phone/DsaSelectSimCard;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/DsaSelectSimCard;->mListView:Landroid/widget/ListView;

    const-string v2, "SimStatus"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2, v4}, Landroid/widget/ListView;->setItemChecked(IZ)V

    const-string v1, "SimStatus"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/DsaSelectSimCard;->mCurrentStatus:I

    iget-boolean v1, p0, Lcom/android/phone/DsaSelectSimCard;->mDialogPause:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0, v4}, Lcom/android/phone/DsaSelectSimCard;->displayDialog(I)V

    :cond_0
    return-void
.end method

.method public softkeyRun1(Landroid/view/View;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-boolean v4, p0, Lcom/android/phone/DsaSelectSimCard;->mIsFirst:Z

    if-eqz v4, :cond_1

    const-string v4, "DsaSelectSimCard"

    const-string v5, "softkeyRun1[PREVIOUS]"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/DsaSelectSimCard;->getIntent()Landroid/content/Intent;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v4, "DsaExtraInitial"

    invoke-virtual {v2, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v4, "extra_init_dialog"

    invoke-virtual {v1, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "extra_init_dialog"

    invoke-virtual {v2, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_0
    const-string v4, "com.android.phone.DsaPhoneNumber"

    invoke-virtual {v2, p0, v4}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lcom/android/phone/DsaSelectSimCard;->startActivity(Landroid/content/Intent;)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/DsaSelectSimCard;->finish()V

    return-void

    :cond_1
    iget-boolean v4, p0, Lcom/android/phone/DsaSelectSimCard;->mFromSetupWizard:Z

    if-eqz v4, :cond_2

    const-string v4, "DsaSelectSimCard"

    const-string v5, "softkeyRun1[PREVIOUS]"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v4, "DsaSelectSimCard"

    const-string v5, "softkeyRun1[SAVE]"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "SelectSimStatus"

    invoke-virtual {p0, v4, v6}, Lcom/android/phone/DsaSelectSimCard;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v4, "SimStatus"

    iget v5, p0, Lcom/android/phone/DsaSelectSimCard;->mCurrentStatus:I

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-virtual {p0}, Lcom/android/phone/DsaSelectSimCard;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "dsa_selected_simside"

    iget v6, p0, Lcom/android/phone/DsaSelectSimCard;->mCurrentStatus:I

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public softkeyRun2(Landroid/view/View;)V
    .locals 14

    const/4 v13, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x0

    iget-boolean v8, p0, Lcom/android/phone/DsaSelectSimCard;->mIsFirst:Z

    if-nez v8, :cond_0

    iget-boolean v8, p0, Lcom/android/phone/DsaSelectSimCard;->mFromSetupWizard:Z

    if-eqz v8, :cond_4

    :cond_0
    const-string v8, "DsaSelectSimCard"

    const-string v9, "softkeyRun2[Finish]"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "dsa_main"

    invoke-virtual {p0, v8, v11}, Lcom/android/phone/DsaSelectSimCard;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v8, "SelectSimStatus"

    invoke-virtual {p0, v8, v11}, Lcom/android/phone/DsaSelectSimCard;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v8, "SimStatus"

    iget v9, p0, Lcom/android/phone/DsaSelectSimCard;->mCurrentStatus:I

    invoke-interface {v1, v8, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-virtual {p0}, Lcom/android/phone/DsaSelectSimCard;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "dsa_selected_simside"

    iget v10, p0, Lcom/android/phone/DsaSelectSimCard;->mCurrentStatus:I

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v8, "dsa_Initial"

    invoke-virtual {p0, v8, v11}, Lcom/android/phone/DsaSelectSimCard;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v8, "dsa_IsFirst"

    invoke-interface {v1, v8, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-boolean v8, p0, Lcom/android/phone/DsaSelectSimCard;->mFromSetupWizard:Z

    if-eqz v8, :cond_1

    const-string v8, "dsa_wizad_done"

    invoke-interface {v1, v8, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :cond_1
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-virtual {p0}, Lcom/android/phone/DsaSelectSimCard;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "dsa_is_first"

    invoke-static {v8, v9, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v8, "dsa_phone_number"

    invoke-virtual {p0, v8, v11}, Lcom/android/phone/DsaSelectSimCard;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v8, "dsa_phone_number_sim1"

    invoke-interface {v0, v8, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v8, "dsa_phone_number_sim2"

    invoke-interface {v0, v8, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v8, p0, Lcom/android/phone/DsaSelectSimCard;->dsaNumbers:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "DsaSelectSimCard"

    const-string v9, "dsaNumbers is not empty!!"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/phone/DsaSelectSimCard;->dsaNumbers:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    :cond_2
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v8, p0, Lcom/android/phone/DsaSelectSimCard;->dsaNumbers:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v8, p0, Lcom/android/phone/DsaSelectSimCard;->dsaNumbers:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mPhoneNB1 : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " mPhoneNB2 : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " mCurrentStatus : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/phone/DsaSelectSimCard;->mCurrentStatus:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/phone/DsaSelectSimCard;->dsaLog(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/phone/DsaSelectSimCard;->dsaset:Lcom/android/phone/DsaSetting;

    iget-object v9, p0, Lcom/android/phone/DsaSelectSimCard;->dsaNumbers:Ljava/util/ArrayList;

    iget v10, p0, Lcom/android/phone/DsaSelectSimCard;->mCurrentStatus:I

    invoke-virtual {v8, v9, v10, v12}, Lcom/android/phone/DsaSetting;->DSAactivate(Ljava/util/ArrayList;IZ)V

    invoke-virtual {p0}, Lcom/android/phone/DsaSelectSimCard;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v8, "extra_init_dialog"

    invoke-virtual {v2, v8, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {p0, v12}, Lcom/android/phone/DsaSelectSimCard;->displayDialog(I)V

    invoke-virtual {p0}, Lcom/android/phone/DsaSelectSimCard;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "dsa_init_process"

    invoke-static {v8, v9, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_0
    iget-object v8, p0, Lcom/android/phone/DsaSelectSimCard;->dsaNumbers:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    return-void

    :cond_3
    invoke-virtual {p0, v11}, Lcom/android/phone/DsaSelectSimCard;->displayDialog(I)V

    goto :goto_0

    :cond_4
    const-string v8, "DsaSelectSimCard"

    const-string v9, "softkeyRun2[Cancel]"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/DsaSelectSimCard;->finish()V

    goto :goto_0
.end method

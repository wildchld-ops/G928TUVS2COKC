.class public Lcom/touchtype/personalizer/PersonalizerPreference;
.super Landroid/preference/Preference;
.source "PersonalizerPreference.java"


# instance fields
.field private final ID:I

.field private mActive:Z

.field private mDefaultSummary:Ljava/lang/CharSequence;

.field private mInputManager:Lcom/ime/framework/common/InputManager;

.field private mPersonalizer:Lcom/touchtype/personalizer/Personalizer;

.field private sp:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object v0, Lcom/touchtype/personalizer/PersonalizerService;->PERSONALIZERS:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/touchtype/personalizer/PersonalizerPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/touchtype/personalizer/PersonalizerPreference;->ID:I

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/touchtype/personalizer/PersonalizerPreference;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object v0, Lcom/touchtype/personalizer/PersonalizerService;->PERSONALIZERS:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/touchtype/personalizer/PersonalizerPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/touchtype/personalizer/PersonalizerPreference;->ID:I

    invoke-direct {p0, p1, p2, p3}, Lcom/touchtype/personalizer/PersonalizerPreference;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/touchtype/personalizer/PersonalizerPreference;)Lcom/touchtype/personalizer/Personalizer;
    .locals 1

    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerPreference;->mPersonalizer:Lcom/touchtype/personalizer/Personalizer;

    return-object v0
.end method

.method static synthetic access$002(Lcom/touchtype/personalizer/PersonalizerPreference;Lcom/touchtype/personalizer/Personalizer;)Lcom/touchtype/personalizer/Personalizer;
    .locals 0

    iput-object p1, p0, Lcom/touchtype/personalizer/PersonalizerPreference;->mPersonalizer:Lcom/touchtype/personalizer/Personalizer;

    return-object p1
.end method

.method static synthetic access$102(Lcom/touchtype/personalizer/PersonalizerPreference;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/touchtype/personalizer/PersonalizerPreference;->mActive:Z

    return p1
.end method

.method static synthetic access$200(Lcom/touchtype/personalizer/PersonalizerPreference;)Lcom/ime/framework/common/InputManager;
    .locals 1

    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerPreference;->mInputManager:Lcom/ime/framework/common/InputManager;

    return-object v0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-virtual {p0}, Lcom/touchtype/personalizer/PersonalizerPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/touchtype/personalizer/PersonalizerPreference;->mDefaultSummary:Ljava/lang/CharSequence;

    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->getInstance()Lcom/ime/framework/common/InputManager;

    move-result-object v0

    iput-object v0, p0, Lcom/touchtype/personalizer/PersonalizerPreference;->mInputManager:Lcom/ime/framework/common/InputManager;

    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerPreference;->mInputManager:Lcom/ime/framework/common/InputManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerPreference;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/touchtype/personalizer/PersonalizerPreference;->sp:Landroid/content/SharedPreferences;

    :cond_0
    return-void
.end method

.method private launchPersonalizer()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget v0, p0, Lcom/touchtype/personalizer/PersonalizerPreference;->ID:I

    packed-switch v0, :pswitch_data_0

    iput-boolean v1, p0, Lcom/touchtype/personalizer/PersonalizerPreference;->mActive:Z

    invoke-static {v1}, Ljunit/framework/Assert;->assertTrue(Z)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerPreference;->mPersonalizer:Lcom/touchtype/personalizer/Personalizer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerPreference;->mPersonalizer:Lcom/touchtype/personalizer/Personalizer;

    invoke-virtual {v0}, Lcom/touchtype/personalizer/Personalizer;->cancel()V

    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerPreference;->mPersonalizer:Lcom/touchtype/personalizer/Personalizer;

    invoke-virtual {p0}, Lcom/touchtype/personalizer/PersonalizerPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/touchtype/personalizer/Personalizer;->startPersonalization(Ljava/lang/String;)V

    :cond_1
    return-void

    :pswitch_0
    new-instance v0, Lcom/touchtype/personalizer/service/SmsPersonalizer;

    invoke-virtual {p0}, Lcom/touchtype/personalizer/PersonalizerPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/touchtype/personalizer/service/SmsPersonalizer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/touchtype/personalizer/PersonalizerPreference;->mPersonalizer:Lcom/touchtype/personalizer/Personalizer;

    iput-boolean v2, p0, Lcom/touchtype/personalizer/PersonalizerPreference;->mActive:Z

    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerPreference;->mInputManager:Lcom/ime/framework/common/InputManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerPreference;->mInputManager:Lcom/ime/framework/common/InputManager;

    const-string v1, "S018"

    const-string v2, "LearnFromMessages"

    invoke-interface {v0, v1, v2}, Lcom/ime/framework/common/InputManager;->insertLogByThread(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    new-instance v0, Lcom/touchtype/personalizer/service/ContactsPersonalizer;

    invoke-virtual {p0}, Lcom/touchtype/personalizer/PersonalizerPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/touchtype/personalizer/service/ContactsPersonalizer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/touchtype/personalizer/PersonalizerPreference;->mPersonalizer:Lcom/touchtype/personalizer/Personalizer;

    iput-boolean v2, p0, Lcom/touchtype/personalizer/PersonalizerPreference;->mActive:Z

    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerPreference;->mInputManager:Lcom/ime/framework/common/InputManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerPreference;->mInputManager:Lcom/ime/framework/common/InputManager;

    const-string v1, "S018"

    const-string v2, "LearnFromContacts"

    invoke-interface {v0, v1, v2}, Lcom/ime/framework/common/InputManager;->insertLogByThread(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private runOnClick()V
    .locals 4

    iget-boolean v2, p0, Lcom/touchtype/personalizer/PersonalizerPreference;->mActive:Z

    if-nez v2, :cond_1

    invoke-direct {p0}, Lcom/touchtype/personalizer/PersonalizerPreference;->launchPersonalizer()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/touchtype/personalizer/PersonalizerPreference;->mPersonalizer:Lcom/touchtype/personalizer/Personalizer;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/touchtype/personalizer/PersonalizerPreference;->mPersonalizer:Lcom/touchtype/personalizer/Personalizer;

    invoke-virtual {v2}, Lcom/touchtype/personalizer/Personalizer;->getServiceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/touchtype/personalizer/PersonalizerPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d01b2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_0
.end method

.method private showLearnFromContactsDialog()V
    .locals 19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/touchtype/personalizer/PersonalizerPreference;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v16, v0

    if-nez v16, :cond_0

    const-string v16, "SamsungIME"

    const-string v17, "inputManager is null in showLearnFromContactsDialog"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/touchtype/personalizer/PersonalizerPreference;->getContext()Landroid/content/Context;

    move-result-object v6

    const v11, 0x7f030003

    const v15, 0x7f0d0168

    const v16, 0x7f0d016a

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    const-string v17, "%s"

    const v18, 0x7f0d0188

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    const v16, 0x7f0d016c

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const-string v16, "layout_inflater"

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/LayoutInflater;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v12, v11, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/touchtype/personalizer/PersonalizerPreference;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v14

    invoke-interface {v14}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    const v16, 0x7f10000d

    move/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    const-string v16, "allow_app_permission_contacts_checkbox"

    const/16 v17, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const v16, 0x7f10000c

    move/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\n\n - "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    invoke-virtual {v2, v10}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2, v15}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v16, 0x104000a

    new-instance v17, Lcom/touchtype/personalizer/PersonalizerPreference$4;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v9, v4}, Lcom/touchtype/personalizer/PersonalizerPreference$4;-><init>(Lcom/touchtype/personalizer/PersonalizerPreference;Landroid/content/SharedPreferences$Editor;Landroid/widget/CheckBox;)V

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v16, 0x1040000

    new-instance v17, Lcom/touchtype/personalizer/PersonalizerPreference$5;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v9, v4}, Lcom/touchtype/personalizer/PersonalizerPreference$5;-><init>(Lcom/touchtype/personalizer/PersonalizerPreference;Landroid/content/SharedPreferences$Editor;Landroid/widget/CheckBox;)V

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v16, Lcom/touchtype/personalizer/PersonalizerPreference$6;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v9, v4}, Lcom/touchtype/personalizer/PersonalizerPreference$6;-><init>(Lcom/touchtype/personalizer/PersonalizerPreference;Landroid/content/SharedPreferences$Editor;Landroid/widget/CheckBox;)V

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0
.end method

.method private showLearnFromMessagesDialog()V
    .locals 19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/touchtype/personalizer/PersonalizerPreference;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v16, v0

    if-nez v16, :cond_0

    const-string v16, "SamsungIME"

    const-string v17, "inputManager is null in showLearnFromMessageDialog"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/touchtype/personalizer/PersonalizerPreference;->getContext()Landroid/content/Context;

    move-result-object v5

    const v10, 0x7f030003

    const v15, 0x7f0d0168

    const v16, 0x7f0d016a

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    const-string v17, "%s"

    const v18, 0x7f0d0187

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    const v16, 0x7f0d016b

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const-string v16, "layout_inflater"

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/LayoutInflater;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v11, v10, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/touchtype/personalizer/PersonalizerPreference;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v14

    invoke-interface {v14}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    const v16, 0x7f10000d

    move/from16 v0, v16

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    const-string v16, "allow_app_permission_messages_checkbox"

    const/16 v17, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const v16, 0x7f10000c

    move/from16 v0, v16

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\n\n - "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    invoke-virtual {v2, v9}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2, v15}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v16, 0x104000a

    new-instance v17, Lcom/touchtype/personalizer/PersonalizerPreference$1;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v8, v4}, Lcom/touchtype/personalizer/PersonalizerPreference$1;-><init>(Lcom/touchtype/personalizer/PersonalizerPreference;Landroid/content/SharedPreferences$Editor;Landroid/widget/CheckBox;)V

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v16, 0x1040000

    new-instance v17, Lcom/touchtype/personalizer/PersonalizerPreference$2;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v8, v4}, Lcom/touchtype/personalizer/PersonalizerPreference$2;-><init>(Lcom/touchtype/personalizer/PersonalizerPreference;Landroid/content/SharedPreferences$Editor;Landroid/widget/CheckBox;)V

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v16, Lcom/touchtype/personalizer/PersonalizerPreference$3;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v8, v4}, Lcom/touchtype/personalizer/PersonalizerPreference$3;-><init>(Lcom/touchtype/personalizer/PersonalizerPreference;Landroid/content/SharedPreferences$Editor;Landroid/widget/CheckBox;)V

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0
.end method


# virtual methods
.method public getPersonalizer()Lcom/touchtype/personalizer/Personalizer;
    .locals 1

    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerPreference;->mPersonalizer:Lcom/touchtype/personalizer/Personalizer;

    return-object v0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/touchtype/personalizer/PersonalizerPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    return-void
.end method

.method protected onClick()V
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    iget-object v7, p0, Lcom/touchtype/personalizer/PersonalizerPreference;->sp:Landroid/content/SharedPreferences;

    const-string v8, "allow_app_permission"

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iget-object v7, p0, Lcom/touchtype/personalizer/PersonalizerPreference;->sp:Landroid/content/SharedPreferences;

    const-string v8, "allow_app_permission_messages"

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iget-object v7, p0, Lcom/touchtype/personalizer/PersonalizerPreference;->sp:Landroid/content/SharedPreferences;

    const-string v8, "allow_app_permission_contacts"

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iget-object v7, p0, Lcom/touchtype/personalizer/PersonalizerPreference;->sp:Landroid/content/SharedPreferences;

    const-string v8, "allow_app_permission_messages_checkbox"

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iget-object v7, p0, Lcom/touchtype/personalizer/PersonalizerPreference;->sp:Landroid/content/SharedPreferences;

    const-string v8, "allow_app_permission_contacts_checkbox"

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iget-object v7, p0, Lcom/touchtype/personalizer/PersonalizerPreference;->sp:Landroid/content/SharedPreferences;

    const-string v8, "first_allow_app_messages_execution"

    invoke-interface {v7, v8, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iget-object v7, p0, Lcom/touchtype/personalizer/PersonalizerPreference;->sp:Landroid/content/SharedPreferences;

    const-string v8, "first_allow_app_contacts_execution"

    invoke-interface {v7, v8, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iget v7, p0, Lcom/touchtype/personalizer/PersonalizerPreference;->ID:I

    packed-switch v7, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v7, p0, Lcom/touchtype/personalizer/PersonalizerPreference;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v7

    if-eqz v7, :cond_1

    if-nez v2, :cond_1

    if-nez v1, :cond_0

    if-eqz v6, :cond_0

    if-nez v5, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/touchtype/personalizer/PersonalizerPreference;->showLearnFromMessagesDialog()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/touchtype/personalizer/PersonalizerPreference;->runOnClick()V

    goto :goto_0

    :pswitch_1
    iget-object v7, p0, Lcom/touchtype/personalizer/PersonalizerPreference;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v7

    if-eqz v7, :cond_3

    if-nez v2, :cond_3

    if-nez v0, :cond_2

    if-eqz v4, :cond_2

    if-nez v3, :cond_3

    :cond_2
    invoke-direct {p0}, Lcom/touchtype/personalizer/PersonalizerPreference;->showLearnFromContactsDialog()V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/touchtype/personalizer/PersonalizerPreference;->runOnClick()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setActive(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/touchtype/personalizer/PersonalizerPreference;->mActive:Z

    return-void
.end method

.method public update(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/touchtype/personalizer/PersonalizerPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/touchtype/personalizer/PersonalizerPreference;->mDefaultSummary:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.class public Lcom/android/phone/edge/GlanceReply;
.super Landroid/app/Activity;
.source "GlanceReply.java"

# interfaces
.implements Landroid/text/TextWatcher;


# static fields
.field public static DEFAULT_REPLY_MESSAGE:Ljava/lang/String;

.field private static MAX_LENGTH_EDIT_TEXT:I

.field private static MAX_LENGTH_EDIT_TEXT_COMMON:I

.field private static MAX_LENGTH_EDIT_TEXT_KOR:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field editText:Landroid/widget/EditText;

.field private handler:Landroid/os/Handler;

.field private imm:Landroid/view/inputmethod/InputMethodManager;

.field private mSubAppBarOnffTextview:Landroid/widget/TextView;

.field private mSubAppBarSwitch:Landroid/widget/Switch;

.field peopleData:Lcom/android/phone/edge/GlanceRelplyPeopleData;

.field private tvTextCount:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/phone/edge/GlanceReply;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/edge/GlanceReply;->TAG:Ljava/lang/String;

    const-string v0, "I can\'t answer your call now. I\'ll get back to you soon."

    sput-object v0, Lcom/android/phone/edge/GlanceReply;->DEFAULT_REPLY_MESSAGE:Ljava/lang/String;

    const/16 v0, 0x46

    sput v0, Lcom/android/phone/edge/GlanceReply;->MAX_LENGTH_EDIT_TEXT_KOR:I

    const/16 v0, 0xa0

    sput v0, Lcom/android/phone/edge/GlanceReply;->MAX_LENGTH_EDIT_TEXT_COMMON:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/android/phone/edge/GlanceReply$2;

    invoke-direct {v0, p0}, Lcom/android/phone/edge/GlanceReply$2;-><init>(Lcom/android/phone/edge/GlanceReply;)V

    iput-object v0, p0, Lcom/android/phone/edge/GlanceReply;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/edge/GlanceReply;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .param p0    # Lcom/android/phone/edge/GlanceReply;

    iget-object v0, p0, Lcom/android/phone/edge/GlanceReply;->imm:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/edge/GlanceReply;)V
    .locals 0
    .param p0    # Lcom/android/phone/edge/GlanceReply;

    invoke-direct {p0}, Lcom/android/phone/edge/GlanceReply;->changeTextCounterColor()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/edge/GlanceReply;Z)V
    .locals 0
    .param p0    # Lcom/android/phone/edge/GlanceReply;
    .param p1    # Z

    invoke-direct {p0, p1}, Lcom/android/phone/edge/GlanceReply;->setSubAppBarState(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/edge/GlanceReply;)Landroid/widget/Switch;
    .locals 1
    .param p0    # Lcom/android/phone/edge/GlanceReply;

    iget-object v0, p0, Lcom/android/phone/edge/GlanceReply;->mSubAppBarSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$400()I
    .locals 1

    sget v0, Lcom/android/phone/edge/GlanceReply;->MAX_LENGTH_EDIT_TEXT:I

    return v0
.end method

.method private alertEmptyMessage()Z
    .locals 4

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/phone/edge/GlanceReply;->editText:Landroid/widget/EditText;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/edge/GlanceReply;->editText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/phone/edge/GlanceReply;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0779

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/edge/GlanceReply;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a077a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/edge/GlanceReply;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0776

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/phone/edge/GlanceReply$6;

    invoke-direct {v3, p0}, Lcom/android/phone/edge/GlanceReply$6;-><init>(Lcom/android/phone/edge/GlanceReply;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/edge/GlanceReply;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0777

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/phone/edge/GlanceReply$7;

    invoke-direct {v3, p0}, Lcom/android/phone/edge/GlanceReply$7;-><init>(Lcom/android/phone/edge/GlanceReply;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private changeEditTextState(Z)V
    .locals 3
    .param p1    # Z

    iget-object v0, p0, Lcom/android/phone/edge/GlanceReply;->editText:Landroid/widget/EditText;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/phone/edge/GlanceReply;->editText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/phone/edge/GlanceReply;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/edge/GlanceReply;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/edge/GlanceReply;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/phone/edge/GlanceReply;->editText:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_1
    invoke-direct {p0}, Lcom/android/phone/edge/GlanceReply;->changeTextCounterColor()V

    goto :goto_0
.end method

.method private changeTextCounterColor()V
    .locals 3

    iget-object v0, p0, Lcom/android/phone/edge/GlanceReply;->tvTextCount:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/edge/GlanceReply;->editText:Landroid/widget/EditText;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/phone/edge/GlanceReply;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/edge/GlanceReply;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/edge/GlanceReply;->tvTextCount:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/phone/edge/GlanceReply;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0054

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/phone/edge/GlanceReply;->tvTextCount:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/phone/edge/GlanceReply;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0055

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method public static displayOnKeyguard(Landroid/content/Context;Landroid/view/Window;)V
    .locals 2
    .param p0    # Landroid/content/Context;
    .param p1    # Landroid/view/Window;

    const-string v1, "keyguard"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v1, 0x80000

    invoke-virtual {p1, v1}, Landroid/view/Window;->addFlags(I)V

    :cond_0
    return-void
.end method

.method private init()V
    .locals 7

    const/4 v6, 0x0

    const v3, 0x7f0a076e

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p0, v3, v4}, Lcom/android/phone/edge/GlanceReply;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f1001d7

    invoke-virtual {p0, v3}, Lcom/android/phone/edge/GlanceReply;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v3, "glance_reply_default_message"

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Lcom/android/phone/edge/GlanceReplyManager;->getDataFromPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "glance_reply_msg_modified"

    invoke-static {p0, v3, v6}, Lcom/android/phone/edge/GlanceReplyManager;->getBooleanFromPreference(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    sget-object v3, Lcom/android/phone/edge/GlanceReply;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isModified="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    if-nez v2, :cond_2

    :cond_0
    sget-object v3, Lcom/android/phone/edge/GlanceReply;->TAG:Ljava/lang/String;

    const-string v4, "first start this app"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/android/phone/edge/GlanceReplyManager;->getGlanceReplyDefaultMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/phone/edge/GlanceReply;->DEFAULT_REPLY_MESSAGE:Ljava/lang/String;

    const-string v3, "glance_reply_default_message"

    sget-object v4, Lcom/android/phone/edge/GlanceReply;->DEFAULT_REPLY_MESSAGE:Ljava/lang/String;

    invoke-static {p0, v3, v4}, Lcom/android/phone/edge/GlanceReplyManager;->setDatatoPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    new-instance v3, Lcom/android/phone/edge/GlanceRelplyPeopleData;

    invoke-static {p0}, Lcom/android/phone/edge/GlanceReplyManager;->getGlanceReplyInfoList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/phone/edge/GlanceRelplyPeopleData;-><init>(Ljava/util/ArrayList;)V

    iput-object v3, p0, Lcom/android/phone/edge/GlanceReply;->peopleData:Lcom/android/phone/edge/GlanceRelplyPeopleData;

    iget-object v3, p0, Lcom/android/phone/edge/GlanceReply;->peopleData:Lcom/android/phone/edge/GlanceRelplyPeopleData;

    sget-object v4, Lcom/android/phone/edge/GlanceReply;->DEFAULT_REPLY_MESSAGE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/phone/edge/GlanceRelplyPeopleData;->setDefaultItem(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/phone/edge/GlanceReply;->initMaxLengthForEditText()V

    const v3, 0x7f1001d8

    invoke-virtual {p0, v3}, Lcom/android/phone/edge/GlanceReply;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/android/phone/edge/GlanceReply;->editText:Landroid/widget/EditText;

    invoke-direct {p0}, Lcom/android/phone/edge/GlanceReply;->setDefaultText()V

    const v3, 0x7f1001ae

    invoke-virtual {p0, v3}, Lcom/android/phone/edge/GlanceReply;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/phone/edge/GlanceReply;->tvTextCount:Landroid/widget/TextView;

    const-string v3, "input_method"

    invoke-virtual {p0, v3}, Lcom/android/phone/edge/GlanceReply;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    iput-object v3, p0, Lcom/android/phone/edge/GlanceReply;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v3, p0, Lcom/android/phone/edge/GlanceReply;->editText:Landroid/widget/EditText;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/phone/edge/GlanceReply;->editText:Landroid/widget/EditText;

    new-instance v4, Lcom/android/phone/edge/GlanceReply$3;

    invoke-direct {v4, p0}, Lcom/android/phone/edge/GlanceReply$3;-><init>(Lcom/android/phone/edge/GlanceReply;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    :cond_1
    invoke-direct {p0}, Lcom/android/phone/edge/GlanceReply;->initActionBar()V

    invoke-direct {p0}, Lcom/android/phone/edge/GlanceReply;->initSubAppBar()V

    invoke-virtual {p0}, Lcom/android/phone/edge/GlanceReply;->setFilter()V

    return-void

    :cond_2
    sput-object v0, Lcom/android/phone/edge/GlanceReply;->DEFAULT_REPLY_MESSAGE:Ljava/lang/String;

    goto :goto_0
.end method

.method private initActionBar()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/phone/edge/GlanceReply;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    return-void
.end method

.method private initMaxLengthForEditText()V
    .locals 1

    sget v0, Lcom/android/phone/edge/GlanceReply;->MAX_LENGTH_EDIT_TEXT_COMMON:I

    sput v0, Lcom/android/phone/edge/GlanceReply;->MAX_LENGTH_EDIT_TEXT:I

    const-string v0, "display_reject_message_limit_for_kor"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/android/phone/edge/GlanceReply;->MAX_LENGTH_EDIT_TEXT_KOR:I

    sput v0, Lcom/android/phone/edge/GlanceReply;->MAX_LENGTH_EDIT_TEXT:I

    :cond_0
    return-void
.end method

.method private initSubAppBar()V
    .locals 3

    const v1, 0x7f10001a

    invoke-virtual {p0, v1}, Lcom/android/phone/edge/GlanceReply;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/edge/GlanceReply;->mSubAppBarOnffTextview:Landroid/widget/TextView;

    const v1, 0x7f10001b

    invoke-virtual {p0, v1}, Lcom/android/phone/edge/GlanceReply;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    iput-object v1, p0, Lcom/android/phone/edge/GlanceReply;->mSubAppBarSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/android/phone/edge/GlanceReply;->mSubAppBarSwitch:Landroid/widget/Switch;

    new-instance v2, Lcom/android/phone/edge/GlanceReply$4;

    invoke-direct {v2, p0}, Lcom/android/phone/edge/GlanceReply$4;-><init>(Lcom/android/phone/edge/GlanceReply;)V

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v1, 0x7f100019

    invoke-virtual {p0, v1}, Lcom/android/phone/edge/GlanceReply;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/android/phone/edge/GlanceReply$5;

    invoke-direct {v2, p0}, Lcom/android/phone/edge/GlanceReply$5;-><init>(Lcom/android/phone/edge/GlanceReply;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p0}, Lcom/android/phone/edge/GlanceReplyManager;->getGlanceReplyState(Landroid/content/Context;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/phone/edge/GlanceReply;->setSubAppBarOnOffTextState(Z)V

    invoke-direct {p0, v0}, Lcom/android/phone/edge/GlanceReply;->changeEditTextState(Z)V

    return-void
.end method

.method private setDefaultText()V
    .locals 3

    iget-object v0, p0, Lcom/android/phone/edge/GlanceReply;->editText:Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/edge/GlanceReply;->peopleData:Lcom/android/phone/edge/GlanceRelplyPeopleData;

    invoke-virtual {v2}, Lcom/android/phone/edge/GlanceRelplyPeopleData;->getDefaultItem()Lcom/android/phone/edge/GlanceReplyInfoItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/edge/GlanceReplyInfoItem;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setSubAppBarOnOffTextState(Z)V
    .locals 3
    .param p1    # Z

    iget-object v0, p0, Lcom/android/phone/edge/GlanceReply;->mSubAppBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/phone/edge/GlanceReply;->mSubAppBarOnffTextview:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/edge/GlanceReply;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a0771

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/edge/GlanceReply;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a0772

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private setSubAppBarState(Z)V
    .locals 0
    .param p1    # Z

    invoke-static {p0, p1}, Lcom/android/phone/edge/GlanceReplyManager;->setGlanceReplyState(Landroid/content/Context;Z)V

    invoke-direct {p0, p1}, Lcom/android/phone/edge/GlanceReply;->setSubAppBarOnOffTextState(Z)V

    invoke-direct {p0, p1}, Lcom/android/phone/edge/GlanceReply;->changeEditTextState(Z)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1    # Landroid/text/Editable;

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
    .param p2    # I
    .param p3    # I
    .param p4    # I

    return-void
.end method

.method public changeDefaultMessage()V
    .locals 5

    iget-object v3, p0, Lcom/android/phone/edge/GlanceReply;->editText:Landroid/widget/EditText;

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/phone/edge/GlanceReply;->editText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->length()I

    move-result v3

    if-nez v3, :cond_1

    invoke-static {p0}, Lcom/android/phone/edge/GlanceReplyManager;->getGlanceReplyDefaultMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-static {p0}, Lcom/android/phone/edge/GlanceReplyManager;->getGlanceReplyDefaultMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v1, 0x1

    :goto_2
    iget-object v3, p0, Lcom/android/phone/edge/GlanceReply;->peopleData:Lcom/android/phone/edge/GlanceRelplyPeopleData;

    invoke-virtual {v3}, Lcom/android/phone/edge/GlanceRelplyPeopleData;->getDefaultItem()Lcom/android/phone/edge/GlanceReplyInfoItem;

    move-result-object v3

    invoke-virtual {v3, p0, v2}, Lcom/android/phone/edge/GlanceReplyInfoItem;->setDefaultMessageforPref(Landroid/content/Context;Ljava/lang/String;)V

    const-string v3, "glance_reply_msg_modified"

    invoke-static {p0, v3, v1}, Lcom/android/phone/edge/GlanceReplyManager;->setBooleanToPreference(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/edge/GlanceReply;->editText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_2
.end method

.method public onBackPressed()V
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/edge/GlanceReply;->alertEmptyMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/edge/GlanceReply;->changeDefaultMessage()V

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0400ac

    invoke-virtual {p0, v0}, Lcom/android/phone/edge/GlanceReply;->setContentView(I)V

    invoke-virtual {p0}, Lcom/android/phone/edge/GlanceReply;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/phone/edge/GlanceReply;->displayOnKeyguard(Landroid/content/Context;Landroid/view/Window;)V

    invoke-direct {p0}, Lcom/android/phone/edge/GlanceReply;->init()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1    # Landroid/view/MenuItem;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/edge/GlanceReply;->onBackPressed()V

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public onPause()V
    .locals 3

    iget-object v0, p0, Lcom/android/phone/edge/GlanceReply;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/phone/edge/GlanceReply;->editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/android/phone/edge/GlanceReply;->editText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/edge/GlanceReply;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/edge/GlanceReply;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/edge/GlanceReply;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/phone/edge/GlanceReply$1;

    invoke-direct {v1, p0}, Lcom/android/phone/edge/GlanceReply$1;-><init>(Lcom/android/phone/edge/GlanceReply;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
    .param p2    # I
    .param p3    # I
    .param p4    # I

    iget-object v0, p0, Lcom/android/phone/edge/GlanceReply;->editText:Landroid/widget/EditText;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/phone/edge/GlanceReply;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/edge/GlanceReply;->updateTextCounter(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setFilter()V
    .locals 4

    const/4 v1, 0x1

    new-array v0, v1, [Landroid/text/InputFilter;

    const/4 v1, 0x0

    new-instance v2, Lcom/android/phone/edge/GlanceReply$8;

    sget v3, Lcom/android/phone/edge/GlanceReply;->MAX_LENGTH_EDIT_TEXT:I

    invoke-direct {v2, p0, v3}, Lcom/android/phone/edge/GlanceReply$8;-><init>(Lcom/android/phone/edge/GlanceReply;I)V

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/android/phone/edge/GlanceReply;->editText:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/edge/GlanceReply;->editText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    iget-object v1, p0, Lcom/android/phone/edge/GlanceReply;->editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/phone/edge/GlanceReply;->updateTextCounter(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/phone/edge/GlanceReply;->editText:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_0
    return-void
.end method

.method public updateTextCounter(Ljava/lang/CharSequence;)V
    .locals 5
    .param p1    # Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/phone/edge/GlanceReply;->editText:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/edge/GlanceReply;->tvTextCount:Landroid/widget/TextView;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "%d/%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/phone/edge/GlanceReply;->editText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->length()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget v4, Lcom/android/phone/edge/GlanceReply;->MAX_LENGTH_EDIT_TEXT:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/edge/GlanceReply;->tvTextCount:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.class public Lcom/android/phone/EditPhoneNumberPreference;
.super Landroid/preference/EditTextPreference;
.source "EditPhoneNumberPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;,
        Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;
    }
.end annotation


# static fields
.field protected static INVALID_CALL_FORWARD_NUMBER_KDDI:Ljava/lang/String;

.field protected static VOICE_MAIL_NUMBER_LOCAL_KDDI:Ljava/lang/String;


# instance fields
.field private editText:Landroid/widget/EditText;

.field private imm:Landroid/view/inputmethod/InputMethodManager;

.field private isButtonClicked:Z

.field private isNeutralButtonClicked:Z

.field private isPositiveButton:Z

.field private isPositiveButtonClicked:Z

.field protected isVoicemail:Z

.field private mButtonClicked:I

.field private mCFtimeLayout:Landroid/widget/LinearLayout;

.field private mCFtimeSpinner:Landroid/widget/Spinner;

.field private mChangeNumberText:Ljava/lang/CharSequence;

.field protected mChecked:Z

.field private mConfirmationMode:I

.field private mContactListIntent:Landroid/content/Intent;

.field private mContactPickButton:Landroid/widget/ImageButton;

.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/AlertDialog;

.field private mDialogFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private mDialogOnClosedListener:Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;

.field private mDisableText:Ljava/lang/CharSequence;

.field private mEnableText:Ljava/lang/CharSequence;

.field private mEncodedText:Ljava/lang/String;

.field private mForward:Z

.field private mGetDefaultNumberListener:Lcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;

.field private mIsContactsBtn:Z

.field private mMeterialContactPickButton:Landroid/widget/LinearLayout;

.field private mParentActivity:Landroid/app/Activity;

.field private mParentFragment:Landroid/app/Fragment;

.field private mPhoneNumber:Ljava/lang/String;

.field private mPrefId:I

.field private mSummaryOff:Ljava/lang/CharSequence;

.field private mSummaryOn:Ljava/lang/CharSequence;

.field private mTimeSeconds:I

.field mToast:Landroid/widget/Toast;

.field private oldNumber:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "09044440000"

    sput-object v0, Lcom/android/phone/EditPhoneNumberPreference;->VOICE_MAIL_NUMBER_LOCAL_KDDI:Ljava/lang/String;

    const-string v0, "09044441499"

    sput-object v0, Lcom/android/phone/EditPhoneNumberPreference;->INVALID_CALL_FORWARD_NUMBER_KDDI:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/phone/EditPhoneNumberPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v5, p0, Lcom/android/phone/EditPhoneNumberPreference;->mIsContactsBtn:Z

    iput-object v4, p0, Lcom/android/phone/EditPhoneNumberPreference;->mDialog:Landroid/app/AlertDialog;

    iput-boolean v3, p0, Lcom/android/phone/EditPhoneNumberPreference;->mForward:Z

    iput v3, p0, Lcom/android/phone/EditPhoneNumberPreference;->mTimeSeconds:I

    iput-object v4, p0, Lcom/android/phone/EditPhoneNumberPreference;->oldNumber:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/android/phone/EditPhoneNumberPreference;->isVoicemail:Z

    iput-object v4, p0, Lcom/android/phone/EditPhoneNumberPreference;->mEncodedText:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mContext:Landroid/content/Context;

    const-string v1, "volte_cmcc_cfu_time"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isSupportVoLTE()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f04007d

    invoke-virtual {p0, v1}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogLayoutResource(I)V

    :goto_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.PICK"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mContactListIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mContactListIntent:Landroid/content/Intent;

    const-string v2, "vnd.android.cursor.dir/phone_v2"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p1, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mToast:Landroid/widget/Toast;

    sget-object v1, Lcom/android/phone/R$styleable;->EditPhoneNumberPreference:[I

    const v2, 0x7f0e0010

    invoke-virtual {p1, p2, v1, v3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mEnableText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mDisableText:Ljava/lang/CharSequence;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mChangeNumberText:Ljava/lang/CharSequence;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mConfirmationMode:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    sget-object v1, Landroid/R$styleable;->CheckBoxPreference:[I

    invoke-virtual {p1, p2, v1, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mSummaryOn:Ljava/lang/CharSequence;

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mSummaryOff:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :cond_0
    const-string v1, "config_op_ui_call_setting_kdi"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f04007c

    invoke-virtual {p0, v1}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogLayoutResource(I)V

    goto :goto_0

    :cond_1
    const v1, 0x7f04007b

    invoke-virtual {p0, v1}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogLayoutResource(I)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/phone/EditPhoneNumberPreference;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->imm:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/EditPhoneNumberPreference;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->editText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/EditPhoneNumberPreference;)Landroid/app/Fragment;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->mParentFragment:Landroid/app/Fragment;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/EditPhoneNumberPreference;)I
    .locals 1

    iget v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->mPrefId:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/phone/EditPhoneNumberPreference;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->mContactListIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/EditPhoneNumberPreference;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/EditPhoneNumberPreference;->displayToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/phone/EditPhoneNumberPreference;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->mParentActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/phone/EditPhoneNumberPreference;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->mDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/phone/EditPhoneNumberPreference;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->isPositiveButton:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/phone/EditPhoneNumberPreference;I)I
    .locals 0

    iput p1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mTimeSeconds:I

    return p1
.end method

.method private displayToast(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method


# virtual methods
.method public getMprefId()I
    .locals 1

    iget v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->mPrefId:I

    return v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->mPhoneNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getRawPhoneNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->mPhoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method protected getRawTimeSeconds()I
    .locals 1

    iget v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->mTimeSeconds:I

    return v0
.end method

.method protected getStringValue()Ljava/lang/String;
    .locals 2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/phone/EditPhoneNumberPreference;->isToggled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/phone/EditPhoneNumberPreference;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method public getSummaryOn()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->mSummaryOn:Ljava/lang/CharSequence;

    return-object v0
.end method

.method protected getTimeSeconds()I
    .locals 2

    const/16 v0, 0x18

    iget-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mCFtimeSpinner:Landroid/widget/Spinner;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mCFtimeSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    add-int/lit8 v0, v1, 0x5

    :cond_0
    return v0
.end method

.method public isToggled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->mChecked:Z

    return v0
.end method

.method public makeCursorPosition()V
    .locals 2

    iget-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->editText:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->editText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    :cond_0
    return-void
.end method

.method protected onAddEditTextToDialogView(Landroid/view/View;Landroid/widget/EditText;)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setFocusable(Z)V

    :cond_0
    return-void
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 8

    const v3, 0x7f100186

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/16 v5, 0x8

    const/4 v4, 0x0

    const/4 v1, -0x2

    iput v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mButtonClicked:I

    iput-boolean v4, p0, Lcom/android/phone/EditPhoneNumberPreference;->isButtonClicked:Z

    iput-boolean v4, p0, Lcom/android/phone/EditPhoneNumberPreference;->isNeutralButtonClicked:Z

    iput-boolean v4, p0, Lcom/android/phone/EditPhoneNumberPreference;->isPositiveButtonClicked:Z

    invoke-super {p0, p1}, Landroid/preference/EditTextPreference;->onBindDialogView(Landroid/view/View;)V

    const v1, 0x7f100185

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->editText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mContext:Landroid/content/Context;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    iput-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->imm:Landroid/view/inputmethod/InputMethodManager;

    const-string v1, "config_op_ui_call_setting_kdi"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f10018a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mCFtimeLayout:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mPrefId:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_9

    const v1, 0x7f10018c

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mCFtimeSpinner:Landroid/widget/Spinner;

    iget v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mPrefId:I

    invoke-virtual {p0, p1, v1}, Lcom/android/phone/EditPhoneNumberPreference;->setEditeBoxCFtimeKDDI(Landroid/view/View;I)V

    :cond_0
    :goto_0
    const-string v1, "menu_simplification"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mMeterialContactPickButton:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mMeterialContactPickButton:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setHoverPopupType(I)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mContactPickButton:Landroid/widget/ImageButton;

    :goto_1
    iget-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->editText:Landroid/widget/EditText;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->editText:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mGetDefaultNumberListener:Lcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mGetDefaultNumberListener:Lcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;

    invoke-interface {v1, p0}, Lcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;->onGetDefaultNumber(Lcom/android/phone/EditPhoneNumberPreference;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "default_vm_in_callforwarding"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-boolean v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mForward:Z

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mPhoneNumber:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    iput-object v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->mPhoneNumber:Ljava/lang/String;

    :cond_1
    :goto_2
    const-string v1, "config_op_ui_call_setting_kdi"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "EditPhoneNumberPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onBindDialogView mPhoneNumber is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/EditPhoneNumberPreference;->mPhoneNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " oldNumber : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/EditPhoneNumberPreference;->oldNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mPhoneNumber:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->oldNumber:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mPhoneNumber:Ljava/lang/String;

    :cond_2
    const-string v1, "feature_sbm"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mForward:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mPhoneNumber:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mPhoneNumber:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v7, :cond_3

    const-string v1, "+81"

    iget-object v2, p0, Lcom/android/phone/EditPhoneNumberPreference;->mPhoneNumber:Ljava/lang/String;

    invoke-virtual {v2, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "EditPhoneNumberPreference"

    const-string v2, "starts with +81, replace to 0"

    invoke-static {v1, v2, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mPhoneNumber:Ljava/lang/String;

    const-string v2, "+81"

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mPhoneNumber:Ljava/lang/String;

    :cond_3
    iget-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->editText:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/phone/EditPhoneNumberPreference;->mPhoneNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/phone/EditPhoneNumberPreference;->makeCursorPosition()V

    iget-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->editText:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/ArrowKeyMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->editText:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    iget-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->editText:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/phone/EditPhoneNumberPreference;->mDialogFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    :cond_4
    iget-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mMeterialContactPickButton:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mMeterialContactPickButton:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/android/phone/EditPhoneNumberPreference$1;

    invoke-direct {v2, p0}, Lcom/android/phone/EditPhoneNumberPreference$1;-><init>(Lcom/android/phone/EditPhoneNumberPreference;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    iget-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mContactPickButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mContactPickButton:Landroid/widget/ImageButton;

    new-instance v2, Lcom/android/phone/EditPhoneNumberPreference$2;

    invoke-direct {v2, p0}, Lcom/android/phone/EditPhoneNumberPreference$2;-><init>(Lcom/android/phone/EditPhoneNumberPreference;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    iget-boolean v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mIsContactsBtn:Z

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mContactPickButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mContactPickButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_7
    iget-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mMeterialContactPickButton:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mMeterialContactPickButton:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_8
    return-void

    :cond_9
    iget-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mCFtimeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    :cond_a
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mContactPickButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mMeterialContactPickButton:Landroid/widget/LinearLayout;

    goto/16 :goto_1

    :cond_b
    if-eqz v0, :cond_1

    iput-object v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->mPhoneNumber:Ljava/lang/String;

    goto/16 :goto_2
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/preference/EditTextPreference;->onBindView(Landroid/view/View;)V

    const v3, 0x1020010

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setLayoutDirection(I)V

    iget v3, p0, Lcom/android/phone/EditPhoneNumberPreference;->mConfirmationMode:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    iget-boolean v3, p0, Lcom/android/phone/EditPhoneNumberPreference;->mChecked:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/phone/EditPhoneNumberPreference;->mSummaryOn:Ljava/lang/CharSequence;

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/EditPhoneNumberPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_5

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-eq v2, v3, :cond_0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->mSummaryOn:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/phone/EditPhoneNumberPreference;->mSummaryOff:Ljava/lang/CharSequence;

    if-nez v3, :cond_3

    invoke-virtual {p0}, Lcom/android/phone/EditPhoneNumberPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_2
    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->mSummaryOff:Ljava/lang/CharSequence;

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lcom/android/phone/EditPhoneNumberPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_5
    const/16 v2, 0x8

    goto :goto_1
.end method

.method public onCFtimeLayoutVisble(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->mCFtimeLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->mCFtimeLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->mCFtimeLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v3, -0x3

    const/4 v2, 0x1

    if-ne p2, v3, :cond_2

    iput-boolean v2, p0, Lcom/android/phone/EditPhoneNumberPreference;->isNeutralButtonClicked:Z

    :goto_0
    if-ne p2, v1, :cond_3

    iput-boolean v2, p0, Lcom/android/phone/EditPhoneNumberPreference;->isPositiveButtonClicked:Z

    :goto_1
    iget v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->mButtonClicked:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->mButtonClicked:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->mButtonClicked:I

    if-ne v0, v3, :cond_1

    :cond_0
    iput-boolean v2, p0, Lcom/android/phone/EditPhoneNumberPreference;->isButtonClicked:Z

    :cond_1
    iput p2, p0, Lcom/android/phone/EditPhoneNumberPreference;->mButtonClicked:I

    invoke-super {p0, p1, p2}, Landroid/preference/EditTextPreference;->onClick(Landroid/content/DialogInterface;I)V

    return-void

    :cond_2
    iput-boolean v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->isNeutralButtonClicked:Z

    goto :goto_0

    :cond_3
    iput-boolean v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->isPositiveButtonClicked:Z

    goto :goto_1
.end method

.method protected onDialogClosed(Z)V
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mConfirmationMode:I

    if-ne v1, v0, :cond_0

    iget-boolean v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->isPositiveButtonClicked:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/EditPhoneNumberPreference;->isToggled()Z

    move-result v1

    if-nez v1, :cond_4

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/phone/EditPhoneNumberPreference;->setToggled(Z)Lcom/android/phone/EditPhoneNumberPreference;

    :cond_0
    iget v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->mButtonClicked:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->mButtonClicked:I

    const/4 v1, -0x3

    if-ne v0, v1, :cond_5

    :cond_1
    iget-object v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/EditPhoneNumberPreference;->setPhoneNumber(Ljava/lang/String;)Lcom/android/phone/EditPhoneNumberPreference;

    invoke-super {p0, p1}, Landroid/preference/EditTextPreference;->onDialogClosed(Z)V

    invoke-virtual {p0}, Lcom/android/phone/EditPhoneNumberPreference;->getStringValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/EditPhoneNumberPreference;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/phone/EditPhoneNumberPreference;->INVALID_CALL_FORWARD_NUMBER_KDDI:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/android/phone/EditPhoneNumberPreference;->setPhoneNumber(Ljava/lang/String;)Lcom/android/phone/EditPhoneNumberPreference;

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->mDialogOnClosedListener:Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->isButtonClicked:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->mDialogOnClosedListener:Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;

    iget v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mButtonClicked:I

    invoke-interface {v0, p0, v1}, Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;->onDialogClosed(Lcom/android/phone/EditPhoneNumberPreference;I)V

    :cond_3
    return-void

    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    :cond_5
    invoke-super {p0, p1}, Landroid/preference/EditTextPreference;->onDialogClosed(Z)V

    goto :goto_1
.end method

.method public onPickActivityResult(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->editText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    const-string v0, "config_op_ui_call_setting_kdi"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->editText:Landroid/widget/EditText;

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/EditPhoneNumberPreference;->makeCursorPosition()V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->editText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->mConfirmationMode:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->mChecked:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->mChangeNumberText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, p0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->mDisableText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iput-boolean v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->isPositiveButton:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1, v2, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->mEnableText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->isPositiveButton:Z

    goto :goto_0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/EditPhoneNumberPreference;->getStringValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/EditPhoneNumberPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {p0, p2}, Lcom/android/phone/EditPhoneNumberPreference;->setValueFromString(Ljava/lang/String;)V

    return-void

    :cond_0
    check-cast p2, Ljava/lang/String;

    goto :goto_0
.end method

.method protected persistString(Ljava/lang/String;)Z
    .locals 1

    iput-object p1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mEncodedText:Ljava/lang/String;

    invoke-super {p0, p1}, Landroid/preference/EditTextPreference;->persistString(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setContactPickIconActive(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mIsContactsBtn:Z

    return-void
.end method

.method public setDialogOnClosedListener(Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mDialogOnClosedListener:Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;

    return-void
.end method

.method public setEditeBoxCFtimeKDDI(Landroid/view/View;I)V
    .locals 7

    iget-object v4, p0, Lcom/android/phone/EditPhoneNumberPreference;->mCFtimeSpinner:Landroid/widget/Spinner;

    if-eqz v4, :cond_3

    const/4 v4, 0x2

    if-ne p2, v4, :cond_3

    iget-object v4, p0, Lcom/android/phone/EditPhoneNumberPreference;->mCFtimeSpinner:Landroid/widget/Spinner;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/phone/EditPhoneNumberPreference;->mGetDefaultNumberListener:Lcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/phone/EditPhoneNumberPreference;->mGetDefaultNumberListener:Lcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;

    invoke-interface {v4, p0}, Lcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;->onGetDefaultNumber(Lcom/android/phone/EditPhoneNumberPreference;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "default_vm_in_callforwarding"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/android/phone/EditPhoneNumberPreference;->mForward:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/phone/EditPhoneNumberPreference;->mPhoneNumber:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz v1, :cond_0

    iput-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mPhoneNumber:Ljava/lang/String;

    :cond_0
    :goto_0
    const/16 v4, 0x33

    new-array v3, v4, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_1
    const/16 v4, 0x32

    if-gt v2, v4, :cond_2

    add-int/lit8 v4, v2, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    if-eqz v1, :cond_0

    iput-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mPhoneNumber:Ljava/lang/String;

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/android/phone/EditPhoneNumberPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f04005c

    invoke-direct {v0, v4, v5, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const v4, 0x1090009

    invoke-virtual {v0, v4}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    iget-object v4, p0, Lcom/android/phone/EditPhoneNumberPreference;->mCFtimeSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v4, p0, Lcom/android/phone/EditPhoneNumberPreference;->mCFtimeSpinner:Landroid/widget/Spinner;

    new-instance v5, Lcom/android/phone/EditPhoneNumberPreference$6;

    invoke-direct {v5, p0}, Lcom/android/phone/EditPhoneNumberPreference$6;-><init>(Lcom/android/phone/EditPhoneNumberPreference;)V

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget v4, p0, Lcom/android/phone/EditPhoneNumberPreference;->mTimeSeconds:I

    if-lez v4, :cond_3

    const-string v4, "EditPhoneNumberPreference"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setEditeBoxCFtimeKDDI() mCFtimeSpinner is set to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/phone/EditPhoneNumberPreference;->mTimeSeconds:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/phone/EditPhoneNumberPreference;->mCFtimeSpinner:Landroid/widget/Spinner;

    iget v5, p0, Lcom/android/phone/EditPhoneNumberPreference;->mTimeSeconds:I

    add-int/lit8 v5, v5, -0x5

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setSelection(I)V

    :cond_3
    return-void
.end method

.method protected setEnableCFPhoneNumber(ZZ)V
    .locals 3

    iget-object v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->editText:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->mContactPickButton:Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->mMeterialContactPickButton:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->editText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->editText:Landroid/widget/EditText;

    if-eqz p1, :cond_2

    const/high16 v0, -0x1000000

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setTextColor(I)V

    if-eqz p2, :cond_3

    iget-object v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->oldNumber:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->editText:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "EditPhoneNumberPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEnableCFPhoneNumber number is voicemail, oldNumber is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/EditPhoneNumberPreference;->oldNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const-string v0, "menu_simplification"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->mMeterialContactPickButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    :cond_1
    :goto_2
    iput-boolean p2, p0, Lcom/android/phone/EditPhoneNumberPreference;->isVoicemail:Z

    return-void

    :cond_2
    const v0, -0x2f2e2e

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->oldNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/android/phone/EditPhoneNumberPreference;->VOICE_MAIL_NUMBER_LOCAL_KDDI:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/phone/EditPhoneNumberPreference;->getRawPhoneNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->editText:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "EditPhoneNumberPreference"

    const-string v1, "setEnableCFPhoneNumber getRawPhoneNumber is voicemail, oldNumber is null"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->editText:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/android/phone/EditPhoneNumberPreference;->getRawPhoneNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_5
    sget-object v0, Lcom/android/phone/EditPhoneNumberPreference;->VOICE_MAIL_NUMBER_LOCAL_KDDI:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->oldNumber:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "EditPhoneNumberPreference"

    const-string v1, "setEnableCFPhoneNumber oldNumber is voicemail"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->editText:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->oldNumber:Ljava/lang/String;

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->editText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->oldNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_7
    iget-object v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->mContactPickButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->mContactPickButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_2
.end method

.method public setParentFragment(Landroid/app/Fragment;I)V
    .locals 1

    iput-object p1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mParentFragment:Landroid/app/Fragment;

    iput p2, p0, Lcom/android/phone/EditPhoneNumberPreference;->mPrefId:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->mGetDefaultNumberListener:Lcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;

    return-void
.end method

.method public setParentFragment(Landroid/app/Fragment;ILcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mParentFragment:Landroid/app/Fragment;

    iput p2, p0, Lcom/android/phone/EditPhoneNumberPreference;->mPrefId:I

    iput-object p3, p0, Lcom/android/phone/EditPhoneNumberPreference;->mGetDefaultNumberListener:Lcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;

    return-void
.end method

.method public setParentFragment(Landroid/app/Fragment;ILcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mParentFragment:Landroid/app/Fragment;

    iput p2, p0, Lcom/android/phone/EditPhoneNumberPreference;->mPrefId:I

    iput-object p3, p0, Lcom/android/phone/EditPhoneNumberPreference;->mGetDefaultNumberListener:Lcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;

    iput-boolean p4, p0, Lcom/android/phone/EditPhoneNumberPreference;->mForward:Z

    return-void
.end method

.method public setParentFragment(Landroid/app/Fragment;IZ)V
    .locals 1

    iput-object p1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mParentFragment:Landroid/app/Fragment;

    iput p2, p0, Lcom/android/phone/EditPhoneNumberPreference;->mPrefId:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->mGetDefaultNumberListener:Lcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;

    iput-boolean p3, p0, Lcom/android/phone/EditPhoneNumberPreference;->mForward:Z

    return-void
.end method

.method public setPhoneNumber(Ljava/lang/String;)Lcom/android/phone/EditPhoneNumberPreference;
    .locals 1

    iput-object p1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mPhoneNumber:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/phone/EditPhoneNumberPreference;->getStringValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/EditPhoneNumberPreference;->setText(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/phone/EditPhoneNumberPreference;->notifyChanged()V

    return-object p0
.end method

.method public setSummaryOn(Ljava/lang/CharSequence;)Lcom/android/phone/EditPhoneNumberPreference;
    .locals 1

    iput-object p1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mSummaryOn:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/android/phone/EditPhoneNumberPreference;->isToggled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/EditPhoneNumberPreference;->notifyChanged()V

    :cond_0
    return-object p0
.end method

.method public setTimeSeconds(I)Lcom/android/phone/EditPhoneNumberPreference;
    .locals 3

    iput p1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mTimeSeconds:I

    const-string v0, "EditPhoneNumberPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTimeSeconds mPrefId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/EditPhoneNumberPreference;->mPrefId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->mCFtimeSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    const-string v0, "EditPhoneNumberPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTimeSeconds() mCFtimeSpinner is set to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/EditPhoneNumberPreference;->mTimeSeconds:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->mCFtimeSpinner:Landroid/widget/Spinner;

    iget v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mTimeSeconds:I

    add-int/lit8 v1, v1, -0x5

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    invoke-virtual {p0}, Lcom/android/phone/EditPhoneNumberPreference;->notifyChanged()V

    :goto_0
    return-object p0

    :cond_0
    const-string v0, "EditPhoneNumberPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTimeSeconds mCFtimeSpinner is null, mTimeSeconds is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/EditPhoneNumberPreference;->mTimeSeconds:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setToggled(Z)Lcom/android/phone/EditPhoneNumberPreference;
    .locals 1

    iput-boolean p1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mChecked:Z

    invoke-virtual {p0}, Lcom/android/phone/EditPhoneNumberPreference;->getStringValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/EditPhoneNumberPreference;->setText(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/phone/EditPhoneNumberPreference;->notifyChanged()V

    return-object p0
.end method

.method protected setValueFromString(Ljava/lang/String;)V
    .locals 3

    const-string v1, ":"

    const/4 v2, 0x2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/phone/EditPhoneNumberPreference;->setToggled(Z)Lcom/android/phone/EditPhoneNumberPreference;

    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-virtual {p0, v1}, Lcom/android/phone/EditPhoneNumberPreference;->setPhoneNumber(Ljava/lang/String;)Lcom/android/phone/EditPhoneNumberPreference;

    return-void
.end method

.method public shouldDisableDependents()Z
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    iget v4, p0, Lcom/android/phone/EditPhoneNumberPreference;->mConfirmationMode:I

    if-ne v4, v2, :cond_0

    iget-object v4, p0, Lcom/android/phone/EditPhoneNumberPreference;->mEncodedText:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v2, p0, Lcom/android/phone/EditPhoneNumberPreference;->mEncodedText:Ljava/lang/String;

    const-string v4, ":"

    const/4 v5, 0x2

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    aget-object v2, v0, v3

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    iget-object v4, p0, Lcom/android/phone/EditPhoneNumberPreference;->mPhoneNumber:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/android/phone/EditPhoneNumberPreference;->mConfirmationMode:I

    if-nez v4, :cond_1

    move v1, v2

    :goto_1
    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 7

    const/4 v6, -0x1

    const/4 v5, -0x3

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-super {p0, p1}, Landroid/preference/EditTextPreference;->showDialog(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/phone/EditPhoneNumberPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x25

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    invoke-virtual {p0}, Lcom/android/phone/EditPhoneNumberPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    check-cast v1, Landroid/app/AlertDialog;

    iput-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mDialog:Landroid/app/AlertDialog;

    new-instance v4, Lcom/android/phone/EditPhoneNumberPreference$3;

    invoke-direct {v4, p0}, Lcom/android/phone/EditPhoneNumberPreference$3;-><init>(Lcom/android/phone/EditPhoneNumberPreference;)V

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/phone/EditPhoneNumberPreference;->setPhoneNumber(Ljava/lang/String;)Lcom/android/phone/EditPhoneNumberPreference;

    iget-boolean v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mForward:Z

    if-eqz v1, :cond_6

    const-string v1, "config_op_ui_call_setting_kdi"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    iget-boolean v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->isPositiveButton:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->editText:Landroid/widget/EditText;

    new-instance v2, Lcom/android/phone/EditPhoneNumberPreference$4;

    invoke-direct {v2, p0}, Lcom/android/phone/EditPhoneNumberPreference$4;-><init>(Lcom/android/phone/EditPhoneNumberPreference;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :goto_1
    return-void

    :cond_1
    iget-boolean v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->isPositiveButton:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v4

    iget-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mPhoneNumber:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v2

    :goto_2
    invoke-virtual {v4, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v4

    iget-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mPhoneNumber:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    move v1, v2

    :goto_3
    invoke-virtual {v4, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    iget-object v4, p0, Lcom/android/phone/EditPhoneNumberPreference;->mPhoneNumber:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    :goto_4
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    :cond_4
    move v1, v3

    goto :goto_3

    :cond_5
    move v2, v3

    goto :goto_4

    :cond_6
    iget-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    iget-object v4, p0, Lcom/android/phone/EditPhoneNumberPreference;->mPhoneNumber:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    :goto_5
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->editText:Landroid/widget/EditText;

    new-instance v2, Lcom/android/phone/EditPhoneNumberPreference$5;

    invoke-direct {v2, p0}, Lcom/android/phone/EditPhoneNumberPreference$5;-><init>(Lcom/android/phone/EditPhoneNumberPreference;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_1

    :cond_7
    move v2, v3

    goto :goto_5
.end method

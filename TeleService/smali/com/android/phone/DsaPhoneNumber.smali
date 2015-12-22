.class public Lcom/android/phone/DsaPhoneNumber;
.super Landroid/app/Activity;
.source "DsaPhoneNumber.java"


# static fields
.field private static mSimnumber:[Ljava/lang/String;


# instance fields
.field mEdit:Landroid/content/SharedPreferences$Editor;

.field private mFromSetupWizard:Z

.field private mIsFirst:Z

.field private mIsRtl:Z

.field private mLeftSoftBtn:Landroid/widget/LinearLayout;

.field private mLeftSoftImage:Landroid/widget/ImageView;

.field private mLeftSoftText:Landroid/widget/TextView;

.field private mMenuOk:Landroid/view/MenuItem;

.field private mPhone1:Lcom/android/internal/telephony/Phone;

.field private mPhone2:Lcom/android/internal/telephony/Phone;

.field mPref:Landroid/content/SharedPreferences;

.field private mRawNumber:[Ljava/lang/String;

.field private mRightSoftBtn:Landroid/widget/LinearLayout;

.field private mRightSoftImage:Landroid/widget/ImageView;

.field private mRightSoftText:Landroid/widget/TextView;

.field private mSim1value:Landroid/widget/EditText;

.field private mSim2value:Landroid/widget/EditText;

.field private mSoftLayout:Landroid/widget/LinearLayout;

.field private mSoftLayoutSW:Landroid/widget/LinearLayout;

.field private tw:Landroid/text/TextWatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/phone/DsaPhoneNumber;->mSimnumber:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/DsaPhoneNumber;->mPhone1:Lcom/android/internal/telephony/Phone;

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/DsaPhoneNumber;->mPhone2:Lcom/android/internal/telephony/Phone;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/DsaPhoneNumber;->mRawNumber:[Ljava/lang/String;

    new-instance v0, Lcom/android/phone/DsaPhoneNumber$3;

    invoke-direct {v0, p0}, Lcom/android/phone/DsaPhoneNumber$3;-><init>(Lcom/android/phone/DsaPhoneNumber;)V

    iput-object v0, p0, Lcom/android/phone/DsaPhoneNumber;->tw:Landroid/text/TextWatcher;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/DsaPhoneNumber;)Landroid/widget/EditText;
    .locals 1
    .param p0    # Lcom/android/phone/DsaPhoneNumber;

    iget-object v0, p0, Lcom/android/phone/DsaPhoneNumber;->mSim1value:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/DsaPhoneNumber;)Landroid/widget/EditText;
    .locals 1
    .param p0    # Lcom/android/phone/DsaPhoneNumber;

    iget-object v0, p0, Lcom/android/phone/DsaPhoneNumber;->mSim2value:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/DsaPhoneNumber;)Z
    .locals 1
    .param p0    # Lcom/android/phone/DsaPhoneNumber;

    iget-boolean v0, p0, Lcom/android/phone/DsaPhoneNumber;->mIsFirst:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/phone/DsaPhoneNumber;)Z
    .locals 1
    .param p0    # Lcom/android/phone/DsaPhoneNumber;

    iget-boolean v0, p0, Lcom/android/phone/DsaPhoneNumber;->mFromSetupWizard:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/phone/DsaPhoneNumber;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0    # Lcom/android/phone/DsaPhoneNumber;

    iget-object v0, p0, Lcom/android/phone/DsaPhoneNumber;->mRightSoftBtn:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/DsaPhoneNumber;)Landroid/widget/TextView;
    .locals 1
    .param p0    # Lcom/android/phone/DsaPhoneNumber;

    iget-object v0, p0, Lcom/android/phone/DsaPhoneNumber;->mRightSoftText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/DsaPhoneNumber;)Landroid/widget/ImageView;
    .locals 1
    .param p0    # Lcom/android/phone/DsaPhoneNumber;

    iget-object v0, p0, Lcom/android/phone/DsaPhoneNumber;->mRightSoftImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/phone/DsaPhoneNumber;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0    # Lcom/android/phone/DsaPhoneNumber;

    iget-object v0, p0, Lcom/android/phone/DsaPhoneNumber;->mLeftSoftBtn:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/phone/DsaPhoneNumber;)Landroid/widget/ImageView;
    .locals 1
    .param p0    # Lcom/android/phone/DsaPhoneNumber;

    iget-object v0, p0, Lcom/android/phone/DsaPhoneNumber;->mLeftSoftImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/phone/DsaPhoneNumber;)Landroid/view/MenuItem;
    .locals 1
    .param p0    # Lcom/android/phone/DsaPhoneNumber;

    iget-object v0, p0, Lcom/android/phone/DsaPhoneNumber;->mMenuOk:Landroid/view/MenuItem;

    return-object v0
.end method

.method private dsaLog(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;

    const-string v0, "DsaPhoneNumber"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private initContentView()V
    .locals 12

    const v9, 0x7f100098

    const v8, 0x7f0a01b3

    const/4 v7, 0x3

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v0, 0x0

    const/4 v3, 0x1

    const v6, 0x7f10009b

    invoke-virtual {p0, v6}, Lcom/android/phone/DsaPhoneNumber;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v6, 0x7f0a0617

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    const v6, 0x7f100099

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/android/phone/DsaPhoneNumber;->mSim1value:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/android/phone/DsaPhoneNumber;->mSim1value:Landroid/widget/EditText;

    invoke-virtual {v6, v8}, Landroid/widget/EditText;->setHint(I)V

    iget-object v6, p0, Lcom/android/phone/DsaPhoneNumber;->mSim1value:Landroid/widget/EditText;

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setInputType(I)V

    const v6, 0x7f10009c

    invoke-virtual {p0, v6}, Lcom/android/phone/DsaPhoneNumber;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0a0618

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    const v6, 0x7f100099

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/android/phone/DsaPhoneNumber;->mSim2value:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/android/phone/DsaPhoneNumber;->mSim2value:Landroid/widget/EditText;

    invoke-virtual {v6, v8}, Landroid/widget/EditText;->setHint(I)V

    iget-object v6, p0, Lcom/android/phone/DsaPhoneNumber;->mSim2value:Landroid/widget/EditText;

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setInputType(I)V

    sget-object v6, Lcom/android/phone/DsaPhoneNumber;->mSimnumber:[Ljava/lang/String;

    iget-object v7, p0, Lcom/android/phone/DsaPhoneNumber;->mPref:Landroid/content/SharedPreferences;

    const-string v8, "dsa_phone_number_sim1"

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    sget-object v6, Lcom/android/phone/DsaPhoneNumber;->mSimnumber:[Ljava/lang/String;

    iget-object v7, p0, Lcom/android/phone/DsaPhoneNumber;->mPref:Landroid/content/SharedPreferences;

    const-string v8, "dsa_phone_number_sim2"

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v11

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mSimnumber[0] : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/phone/DsaPhoneNumber;->mSimnumber:[Ljava/lang/String;

    aget-object v7, v7, v10

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mSimnumber[1] : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/phone/DsaPhoneNumber;->mSimnumber:[Ljava/lang/String;

    aget-object v7, v7, v11

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "mRawNumber[0] : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/DsaPhoneNumber;->mRawNumber:[Ljava/lang/String;

    aget-object v7, v7, v10

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mRawNumber[1] : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/DsaPhoneNumber;->mRawNumber:[Ljava/lang/String;

    aget-object v7, v7, v11

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/phone/DsaPhoneNumber;->dsaLog(Ljava/lang/String;)V

    sget-object v6, Lcom/android/phone/DsaPhoneNumber;->mSimnumber:[Ljava/lang/String;

    aget-object v6, v6, v10

    if-nez v6, :cond_0

    sget-object v6, Lcom/android/phone/DsaPhoneNumber;->mSimnumber:[Ljava/lang/String;

    iget-object v7, p0, Lcom/android/phone/DsaPhoneNumber;->mRawNumber:[Ljava/lang/String;

    aget-object v7, v7, v10

    aput-object v7, v6, v10

    iget-object v6, p0, Lcom/android/phone/DsaPhoneNumber;->mEdit:Landroid/content/SharedPreferences$Editor;

    const-string v7, "dsa_phone_number_sim1"

    sget-object v8, Lcom/android/phone/DsaPhoneNumber;->mSimnumber:[Ljava/lang/String;

    aget-object v8, v8, v10

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v6, p0, Lcom/android/phone/DsaPhoneNumber;->mEdit:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    sget-object v6, Lcom/android/phone/DsaPhoneNumber;->mSimnumber:[Ljava/lang/String;

    aget-object v6, v6, v11

    if-nez v6, :cond_1

    sget-object v6, Lcom/android/phone/DsaPhoneNumber;->mSimnumber:[Ljava/lang/String;

    iget-object v7, p0, Lcom/android/phone/DsaPhoneNumber;->mRawNumber:[Ljava/lang/String;

    aget-object v7, v7, v11

    aput-object v7, v6, v11

    iget-object v6, p0, Lcom/android/phone/DsaPhoneNumber;->mEdit:Landroid/content/SharedPreferences$Editor;

    const-string v7, "dsa_phone_number_sim2"

    sget-object v8, Lcom/android/phone/DsaPhoneNumber;->mSimnumber:[Ljava/lang/String;

    aget-object v8, v8, v11

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v6, p0, Lcom/android/phone/DsaPhoneNumber;->mEdit:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1
    sget-object v6, Lcom/android/phone/DsaPhoneNumber;->mSimnumber:[Ljava/lang/String;

    aget-object v6, v6, v10

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/phone/DsaPhoneNumber;->mSim1value:Landroid/widget/EditText;

    sget-object v7, Lcom/android/phone/DsaPhoneNumber;->mSimnumber:[Ljava/lang/String;

    aget-object v7, v7, v10

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/android/phone/DsaPhoneNumber;->mSim1value:Landroid/widget/EditText;

    sget-object v7, Lcom/android/phone/DsaPhoneNumber;->mSimnumber:[Ljava/lang/String;

    aget-object v7, v7, v10

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    sget-object v8, Lcom/android/phone/DsaPhoneNumber;->mSimnumber:[Ljava/lang/String;

    aget-object v8, v8, v10

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/widget/EditText;->setSelection(II)V

    :cond_2
    sget-object v6, Lcom/android/phone/DsaPhoneNumber;->mSimnumber:[Ljava/lang/String;

    aget-object v6, v6, v11

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/phone/DsaPhoneNumber;->mSim2value:Landroid/widget/EditText;

    sget-object v7, Lcom/android/phone/DsaPhoneNumber;->mSimnumber:[Ljava/lang/String;

    aget-object v7, v7, v11

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/android/phone/DsaPhoneNumber;->mSim2value:Landroid/widget/EditText;

    sget-object v7, Lcom/android/phone/DsaPhoneNumber;->mSimnumber:[Ljava/lang/String;

    aget-object v7, v7, v11

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    sget-object v8, Lcom/android/phone/DsaPhoneNumber;->mSimnumber:[Ljava/lang/String;

    aget-object v8, v8, v11

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/widget/EditText;->setSelection(II)V

    :cond_3
    sget-object v6, Lcom/android/phone/DsaPhoneNumber;->mSimnumber:[Ljava/lang/String;

    aget-object v6, v6, v10

    if-eqz v6, :cond_4

    sget-object v6, Lcom/android/phone/DsaPhoneNumber;->mSimnumber:[Ljava/lang/String;

    aget-object v6, v6, v11

    if-nez v6, :cond_8

    :cond_4
    iget-boolean v6, p0, Lcom/android/phone/DsaPhoneNumber;->mIsFirst:Z

    if-nez v6, :cond_5

    iget-boolean v6, p0, Lcom/android/phone/DsaPhoneNumber;->mFromSetupWizard:Z

    if-eqz v6, :cond_7

    :cond_5
    iget-object v6, p0, Lcom/android/phone/DsaPhoneNumber;->mRightSoftBtn:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v6, p0, Lcom/android/phone/DsaPhoneNumber;->mRightSoftText:Landroid/widget/TextView;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v6, p0, Lcom/android/phone/DsaPhoneNumber;->mRightSoftImage:Landroid/widget/ImageView;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/phone/DsaPhoneNumber;->mRightSoftImage:Landroid/widget/ImageView;

    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setEnabled(Z)V

    :cond_6
    :goto_0
    iget-object v6, p0, Lcom/android/phone/DsaPhoneNumber;->mSim1value:Landroid/widget/EditText;

    iget-object v7, p0, Lcom/android/phone/DsaPhoneNumber;->tw:Landroid/text/TextWatcher;

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v6, p0, Lcom/android/phone/DsaPhoneNumber;->mSim2value:Landroid/widget/EditText;

    iget-object v7, p0, Lcom/android/phone/DsaPhoneNumber;->tw:Landroid/text/TextWatcher;

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void

    :cond_7
    iget-object v6, p0, Lcom/android/phone/DsaPhoneNumber;->mLeftSoftBtn:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v6, p0, Lcom/android/phone/DsaPhoneNumber;->mLeftSoftImage:Landroid/widget/ImageView;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/phone/DsaPhoneNumber;->mLeftSoftImage:Landroid/widget/ImageView;

    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_0

    :cond_8
    iget-boolean v6, p0, Lcom/android/phone/DsaPhoneNumber;->mIsFirst:Z

    if-nez v6, :cond_9

    iget-boolean v6, p0, Lcom/android/phone/DsaPhoneNumber;->mFromSetupWizard:Z

    if-eqz v6, :cond_a

    :cond_9
    iget-object v6, p0, Lcom/android/phone/DsaPhoneNumber;->mRightSoftBtn:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v11}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v6, p0, Lcom/android/phone/DsaPhoneNumber;->mRightSoftText:Landroid/widget/TextView;

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v6, p0, Lcom/android/phone/DsaPhoneNumber;->mRightSoftImage:Landroid/widget/ImageView;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/phone/DsaPhoneNumber;->mRightSoftImage:Landroid/widget/ImageView;

    invoke-virtual {v6, v11}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_0

    :cond_a
    iget-object v6, p0, Lcom/android/phone/DsaPhoneNumber;->mLeftSoftBtn:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v11}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v6, p0, Lcom/android/phone/DsaPhoneNumber;->mLeftSoftImage:Landroid/widget/ImageView;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/phone/DsaPhoneNumber;->mLeftSoftImage:Landroid/widget/ImageView;

    invoke-virtual {v6, v11}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method public isNumberChanged()Z
    .locals 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/android/phone/DsaPhoneNumber;->mSim1value:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/phone/DsaPhoneNumber;->mSimnumber:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/phone/DsaPhoneNumber;->mSim1value:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/phone/DsaPhoneNumber;->mSimnumber:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    iget-object v4, p0, Lcom/android/phone/DsaPhoneNumber;->mSim2value:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/phone/DsaPhoneNumber;->mSimnumber:[Ljava/lang/String;

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/phone/DsaPhoneNumber;->mSim2value:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Lcom/android/phone/DsaPhoneNumber;->mSimnumber:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    if-nez v0, :cond_4

    if-eqz v1, :cond_5

    :cond_4
    move v2, v3

    :cond_5
    return v2
.end method

.method public onBackPressed()V
    .locals 4

    const-string v1, "DsaPhoneNumber"

    const-string v2, "onBackPressed()..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a07ab

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a07ac

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a008e

    new-instance v3, Lcom/android/phone/DsaPhoneNumber$6;

    invoke-direct {v3, p0}, Lcom/android/phone/DsaPhoneNumber$6;-><init>(Lcom/android/phone/DsaPhoneNumber;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a04f8

    new-instance v3, Lcom/android/phone/DsaPhoneNumber$5;

    invoke-direct {v3, p0}, Lcom/android/phone/DsaPhoneNumber$5;-><init>(Lcom/android/phone/DsaPhoneNumber;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a01b4

    new-instance v3, Lcom/android/phone/DsaPhoneNumber$4;

    invoke-direct {v3, p0}, Lcom/android/phone/DsaPhoneNumber$4;-><init>(Lcom/android/phone/DsaPhoneNumber;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/phone/DsaPhoneNumber;->isNumberChanged()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1    # Landroid/os/Bundle;

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string v1, "DsaPhoneNumber"

    const-string v4, "onCreate()"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v1, 0x7f040035

    invoke-virtual {p0, v1}, Lcom/android/phone/DsaPhoneNumber;->setContentView(I)V

    const-string v1, "dsa_phone_number"

    invoke-virtual {p0, v1, v3}, Lcom/android/phone/DsaPhoneNumber;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/DsaPhoneNumber;->mPref:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/android/phone/DsaPhoneNumber;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/DsaPhoneNumber;->mEdit:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/android/phone/DsaPhoneNumber;->mRawNumber:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/phone/DsaPhoneNumber;->mPhone1:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    iget-object v1, p0, Lcom/android/phone/DsaPhoneNumber;->mPhone2:Lcom/android/internal/telephony/Phone;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/DsaPhoneNumber;->mRawNumber:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/phone/DsaPhoneNumber;->mPhone2:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    :cond_0
    iget-object v1, p0, Lcom/android/phone/DsaPhoneNumber;->mPhone1:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/DsaPhoneNumber;->mPhone1:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/DsaPhoneNumber;->mRawNumber:[Ljava/lang/String;

    aput-object v6, v1, v3

    :cond_1
    iget-object v1, p0, Lcom/android/phone/DsaPhoneNumber;->mPhone2:Lcom/android/internal/telephony/Phone;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/DsaPhoneNumber;->mPhone2:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/DsaPhoneNumber;->mPhone2:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/DsaPhoneNumber;->mRawNumber:[Ljava/lang/String;

    aput-object v6, v1, v2

    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/DsaPhoneNumber;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "DsaExtraInitial"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/phone/DsaPhoneNumber;->mIsFirst:Z

    const-string v1, "SecSetupWizard"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/phone/DsaPhoneNumber;->mFromSetupWizard:Z

    const-string v1, "DsaPhoneNumber"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mIsFirst : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/phone/DsaPhoneNumber;->mIsFirst:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "DsaPhoneNumber"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SecSetupWizard : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "SecSetupWizard"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v1, 0x7f1000a4

    invoke-virtual {p0, v1}, Lcom/android/phone/DsaPhoneNumber;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/phone/DsaPhoneNumber;->mSoftLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f10009d

    invoke-virtual {p0, v1}, Lcom/android/phone/DsaPhoneNumber;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/phone/DsaPhoneNumber;->mSoftLayoutSW:Landroid/widget/LinearLayout;

    iget-boolean v1, p0, Lcom/android/phone/DsaPhoneNumber;->mIsFirst:Z

    if-eqz v1, :cond_6

    const v1, 0x7f1000a5

    invoke-virtual {p0, v1}, Lcom/android/phone/DsaPhoneNumber;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/phone/DsaPhoneNumber;->mLeftSoftBtn:Landroid/widget/LinearLayout;

    const v1, 0x7f1000a6

    invoke-virtual {p0, v1}, Lcom/android/phone/DsaPhoneNumber;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/DsaPhoneNumber;->mLeftSoftText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/phone/DsaPhoneNumber;->mLeftSoftBtn:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    const v1, 0x7f1000a7

    invoke-virtual {p0, v1}, Lcom/android/phone/DsaPhoneNumber;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/phone/DsaPhoneNumber;->mRightSoftBtn:Landroid/widget/LinearLayout;

    const v1, 0x7f1000a8

    invoke-virtual {p0, v1}, Lcom/android/phone/DsaPhoneNumber;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/DsaPhoneNumber;->mRightSoftText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/phone/DsaPhoneNumber;->mRightSoftBtn:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/phone/DsaPhoneNumber;->mRightSoftText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    iput-object v6, p0, Lcom/android/phone/DsaPhoneNumber;->mLeftSoftImage:Landroid/widget/ImageView;

    const v1, 0x7f1000a9

    invoke-virtual {p0, v1}, Lcom/android/phone/DsaPhoneNumber;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/phone/DsaPhoneNumber;->mRightSoftImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/phone/DsaPhoneNumber;->mRightSoftImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    :goto_0
    iget-object v1, p0, Lcom/android/phone/DsaPhoneNumber;->mLeftSoftBtn:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/android/phone/DsaPhoneNumber$1;

    invoke-direct {v4, p0}, Lcom/android/phone/DsaPhoneNumber$1;-><init>(Lcom/android/phone/DsaPhoneNumber;)V

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/phone/DsaPhoneNumber;->mRightSoftBtn:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/android/phone/DsaPhoneNumber$2;

    invoke-direct {v4, p0}, Lcom/android/phone/DsaPhoneNumber$2;-><init>(Lcom/android/phone/DsaPhoneNumber;)V

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v1

    if-ne v1, v2, :cond_7

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/android/phone/DsaPhoneNumber;->mIsRtl:Z

    iget-boolean v1, p0, Lcom/android/phone/DsaPhoneNumber;->mIsRtl:Z

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/android/phone/DsaPhoneNumber;->mLeftSoftImage:Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/phone/DsaPhoneNumber;->mLeftSoftImage:Landroid/widget/ImageView;

    const v4, 0x7f02000e

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_3
    iget-object v1, p0, Lcom/android/phone/DsaPhoneNumber;->mRightSoftImage:Landroid/widget/ImageView;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/phone/DsaPhoneNumber;->mRightSoftImage:Landroid/widget/ImageView;

    const v4, 0x7f020010

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_4
    invoke-direct {p0}, Lcom/android/phone/DsaPhoneNumber;->initContentView()V

    const-string v1, "extra_init_dialog"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "DsaPhoneNumber"

    const-string v3, "EXTRA_INIT_DIALOG"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/DsaPhoneNumber;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "dsa_init_process"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_5
    return-void

    :cond_6
    const v1, 0x7f10009e

    invoke-virtual {p0, v1}, Lcom/android/phone/DsaPhoneNumber;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/phone/DsaPhoneNumber;->mLeftSoftBtn:Landroid/widget/LinearLayout;

    const v1, 0x7f1000a0

    invoke-virtual {p0, v1}, Lcom/android/phone/DsaPhoneNumber;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/DsaPhoneNumber;->mLeftSoftText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/phone/DsaPhoneNumber;->mLeftSoftBtn:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    const v1, 0x7f1000a1

    invoke-virtual {p0, v1}, Lcom/android/phone/DsaPhoneNumber;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/phone/DsaPhoneNumber;->mRightSoftBtn:Landroid/widget/LinearLayout;

    const v1, 0x7f1000a2

    invoke-virtual {p0, v1}, Lcom/android/phone/DsaPhoneNumber;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/DsaPhoneNumber;->mRightSoftText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/phone/DsaPhoneNumber;->mRightSoftBtn:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/phone/DsaPhoneNumber;->mRightSoftText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    const v1, 0x7f10009f

    invoke-virtual {p0, v1}, Lcom/android/phone/DsaPhoneNumber;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/phone/DsaPhoneNumber;->mLeftSoftImage:Landroid/widget/ImageView;

    const v1, 0x7f1000a3

    invoke-virtual {p0, v1}, Lcom/android/phone/DsaPhoneNumber;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/phone/DsaPhoneNumber;->mRightSoftImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/phone/DsaPhoneNumber;->mLeftSoftImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/phone/DsaPhoneNumber;->mRightSoftImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_7
    move v1, v3

    goto/16 :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 8
    .param p1    # Landroid/view/Menu;

    const/4 v7, 0x6

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v1, 0x0

    const-string v2, "DsaPhoneNumber"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreateOptionsMenu : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/phone/DsaPhoneNumber;->mIsFirst:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/phone/DsaPhoneNumber;->mFromSetupWizard:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/DsaPhoneNumber;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    :cond_0
    iget-boolean v2, p0, Lcom/android/phone/DsaPhoneNumber;->mIsFirst:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/android/phone/DsaPhoneNumber;->mFromSetupWizard:Z

    if-nez v2, :cond_1

    const v2, 0x7f0a0283

    invoke-interface {p1, v1, v5, v5, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v7}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v2, 0x7f0a0282

    invoke-interface {p1, v1, v6, v5, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v1, 0x7f0a0578

    invoke-virtual {p0, v1}, Lcom/android/phone/DsaPhoneNumber;->setTitle(I)V

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/DsaPhoneNumber;->mMenuOk:Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/android/phone/DsaPhoneNumber;->mMenuOk:Landroid/view/MenuItem;

    iget-object v2, p0, Lcom/android/phone/DsaPhoneNumber;->mLeftSoftBtn:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    :cond_1
    return v1
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "DsaPhoneNumber"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1    # I
    .param p2    # Landroid/view/KeyEvent;

    const/4 v5, 0x0

    const-string v3, "DsaPhoneNumber"

    const-string v4, "onKeyUp"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x4

    if-ne p1, v3, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/DsaPhoneNumber;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "extra_init_dialog"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/DsaPhoneNumber;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "dsa_init_process"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.NetworkManagement"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "DsaPhoneNumber"

    const-string v4, "Network Management calling startActivity"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "com.android.settings.networkmanagement"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/phone/DsaPhoneNumber;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v3, 0x1

    :goto_1
    return v3

    :catch_0
    move-exception v0

    const-string v3, "DsaPhoneNumber"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No activity found for intent : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1    # Landroid/view/MenuItem;

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
    invoke-virtual {p0}, Lcom/android/phone/DsaPhoneNumber;->finish()V

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0, v2}, Lcom/android/phone/DsaPhoneNumber;->softkeyRun1(Landroid/view/View;)V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0, v2}, Lcom/android/phone/DsaPhoneNumber;->softkeyRun2(Landroid/view/View;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_1
        0x102002c -> :sswitch_0
    .end sparse-switch
.end method

.method public onResume()V
    .locals 6

    const v5, 0x7f0a061c

    const/16 v4, 0x8

    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string v0, "DsaPhoneNumber"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-boolean v0, p0, Lcom/android/phone/DsaPhoneNumber;->mFromSetupWizard:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/phone/DsaPhoneNumber;->mLeftSoftText:Landroid/widget/TextView;

    const v1, 0x7f0a061d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/phone/DsaPhoneNumber;->mRightSoftText:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/phone/DsaPhoneNumber;->mSoftLayoutSW:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/phone/DsaPhoneNumber;->mSoftLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/android/phone/DsaPhoneNumber;->mSim1value:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/DsaPhoneNumber;->mSim2value:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-nez v0, :cond_8

    :cond_0
    iget-boolean v0, p0, Lcom/android/phone/DsaPhoneNumber;->mIsFirst:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/phone/DsaPhoneNumber;->mFromSetupWizard:Z

    if-eqz v0, :cond_6

    :cond_1
    iget-object v0, p0, Lcom/android/phone/DsaPhoneNumber;->mRightSoftBtn:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/phone/DsaPhoneNumber;->mRightSoftText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/phone/DsaPhoneNumber;->mLeftSoftBtn:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/phone/DsaPhoneNumber;->mLeftSoftImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/DsaPhoneNumber;->mLeftSoftImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    :cond_2
    iget-object v0, p0, Lcom/android/phone/DsaPhoneNumber;->mRightSoftImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/DsaPhoneNumber;->mRightSoftImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    :cond_3
    :goto_1
    return-void

    :cond_4
    iget-boolean v0, p0, Lcom/android/phone/DsaPhoneNumber;->mIsFirst:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/phone/DsaPhoneNumber;->mLeftSoftText:Landroid/widget/TextView;

    const v1, 0x7f0a008e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/phone/DsaPhoneNumber;->mRightSoftText:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/phone/DsaPhoneNumber;->mSoftLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/phone/DsaPhoneNumber;->mSoftLayoutSW:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/phone/DsaPhoneNumber;->mSoftLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/phone/DsaPhoneNumber;->mSoftLayoutSW:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/android/phone/DsaPhoneNumber;->mLeftSoftBtn:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/phone/DsaPhoneNumber;->mRightSoftBtn:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/phone/DsaPhoneNumber;->mLeftSoftImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/phone/DsaPhoneNumber;->mLeftSoftImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    :cond_7
    iget-object v0, p0, Lcom/android/phone/DsaPhoneNumber;->mRightSoftImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/DsaPhoneNumber;->mRightSoftImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_1

    :cond_8
    iget-object v0, p0, Lcom/android/phone/DsaPhoneNumber;->mLeftSoftBtn:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/phone/DsaPhoneNumber;->mRightSoftBtn:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/phone/DsaPhoneNumber;->mRightSoftText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/phone/DsaPhoneNumber;->mLeftSoftImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/phone/DsaPhoneNumber;->mLeftSoftImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    :cond_9
    iget-object v0, p0, Lcom/android/phone/DsaPhoneNumber;->mRightSoftImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/DsaPhoneNumber;->mRightSoftImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_1
.end method

.method public softkeyRun1(Landroid/view/View;)V
    .locals 8
    .param p1    # Landroid/view/View;

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-boolean v3, p0, Lcom/android/phone/DsaPhoneNumber;->mIsFirst:Z

    if-eqz v3, :cond_3

    const-string v3, "DsaPhoneNumber"

    const-string v4, "softkeyRun1[Cancel]"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/DsaPhoneNumber;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "dsa_init_process"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/phone/DsaPhoneNumber;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "extra_init_dialog"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.NetworkManagement"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "DsaPhoneNumber"

    const-string v4, "Network Management calling startActivity"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "com.android.settings.networkmanagement"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/phone/DsaPhoneNumber;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/phone/DsaPhoneNumber;->mSim1value:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/phone/DsaPhoneNumber;->mSim1value:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/phone/DsaPhoneNumber;->mSimnumber:[Ljava/lang/String;

    aget-object v4, v4, v6

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/phone/DsaPhoneNumber;->mEdit:Landroid/content/SharedPreferences$Editor;

    const-string v4, "dsa_phone_number_sim1"

    iget-object v5, p0, Lcom/android/phone/DsaPhoneNumber;->mSim1value:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v3, p0, Lcom/android/phone/DsaPhoneNumber;->mEdit:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Change SIM 1 number : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/phone/DsaPhoneNumber;->mSimnumber:[Ljava/lang/String;

    aget-object v4, v4, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/DsaPhoneNumber;->mSim1value:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/DsaPhoneNumber;->dsaLog(Ljava/lang/String;)V

    :cond_1
    iget-object v3, p0, Lcom/android/phone/DsaPhoneNumber;->mSim2value:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/phone/DsaPhoneNumber;->mSim2value:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/phone/DsaPhoneNumber;->mSimnumber:[Ljava/lang/String;

    aget-object v4, v4, v7

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/phone/DsaPhoneNumber;->mEdit:Landroid/content/SharedPreferences$Editor;

    const-string v4, "dsa_phone_number_sim2"

    iget-object v5, p0, Lcom/android/phone/DsaPhoneNumber;->mSim2value:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v3, p0, Lcom/android/phone/DsaPhoneNumber;->mEdit:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Change SIM 2 number : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/phone/DsaPhoneNumber;->mSimnumber:[Ljava/lang/String;

    aget-object v4, v4, v7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/DsaPhoneNumber;->mSim2value:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/DsaPhoneNumber;->dsaLog(Ljava/lang/String;)V

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/phone/DsaPhoneNumber;->finish()V

    return-void

    :catch_0
    move-exception v0

    const-string v3, "DsaPhoneNumber"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No activity found for intent : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    :cond_3
    iget-boolean v3, p0, Lcom/android/phone/DsaPhoneNumber;->mFromSetupWizard:Z

    if-eqz v3, :cond_4

    const-string v3, "DsaPhoneNumber"

    const-string v4, "softkeyRun1[Previous]"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/DsaPhoneNumber;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "dsa_init_process"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_4
    const-string v3, "DsaPhoneNumber"

    const-string v4, "softkeyRun1[Save]"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/phone/DsaPhoneNumber;->mSim1value:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/phone/DsaPhoneNumber;->mSim1value:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/phone/DsaPhoneNumber;->mSimnumber:[Ljava/lang/String;

    aget-object v4, v4, v6

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/android/phone/DsaPhoneNumber;->mEdit:Landroid/content/SharedPreferences$Editor;

    const-string v4, "dsa_phone_number_sim1"

    iget-object v5, p0, Lcom/android/phone/DsaPhoneNumber;->mSim1value:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v3, p0, Lcom/android/phone/DsaPhoneNumber;->mEdit:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Change SIM 1 number : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/phone/DsaPhoneNumber;->mSimnumber:[Ljava/lang/String;

    aget-object v4, v4, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/DsaPhoneNumber;->mSim1value:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/DsaPhoneNumber;->dsaLog(Ljava/lang/String;)V

    :cond_5
    iget-object v3, p0, Lcom/android/phone/DsaPhoneNumber;->mSim2value:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/phone/DsaPhoneNumber;->mSim2value:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/phone/DsaPhoneNumber;->mSimnumber:[Ljava/lang/String;

    aget-object v4, v4, v7

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/phone/DsaPhoneNumber;->mEdit:Landroid/content/SharedPreferences$Editor;

    const-string v4, "dsa_phone_number_sim2"

    iget-object v5, p0, Lcom/android/phone/DsaPhoneNumber;->mSim2value:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v3, p0, Lcom/android/phone/DsaPhoneNumber;->mEdit:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Change SIM 2 number : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/phone/DsaPhoneNumber;->mSimnumber:[Ljava/lang/String;

    aget-object v4, v4, v7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/DsaPhoneNumber;->mSim2value:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/DsaPhoneNumber;->dsaLog(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public softkeyRun2(Landroid/view/View;)V
    .locals 8
    .param p1    # Landroid/view/View;

    const/4 v7, 0x0

    const/4 v6, 0x1

    iget-boolean v3, p0, Lcom/android/phone/DsaPhoneNumber;->mIsFirst:Z

    if-eqz v3, :cond_3

    const-string v3, "DsaPhoneNumber"

    const-string v4, "softkeyRun2[Next]"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/phone/DsaPhoneNumber;->mSim1value:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/DsaPhoneNumber;->mSim1value:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/phone/DsaPhoneNumber;->mSimnumber:[Ljava/lang/String;

    aget-object v4, v4, v7

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/DsaPhoneNumber;->mEdit:Landroid/content/SharedPreferences$Editor;

    const-string v4, "dsa_phone_number_sim1"

    iget-object v5, p0, Lcom/android/phone/DsaPhoneNumber;->mSim1value:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v3, p0, Lcom/android/phone/DsaPhoneNumber;->mEdit:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Change SIM 1 number : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/phone/DsaPhoneNumber;->mSimnumber:[Ljava/lang/String;

    aget-object v4, v4, v7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/DsaPhoneNumber;->mSim1value:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/DsaPhoneNumber;->dsaLog(Ljava/lang/String;)V

    :cond_0
    iget-object v3, p0, Lcom/android/phone/DsaPhoneNumber;->mSim2value:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/phone/DsaPhoneNumber;->mSim2value:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/phone/DsaPhoneNumber;->mSimnumber:[Ljava/lang/String;

    aget-object v4, v4, v6

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/phone/DsaPhoneNumber;->mEdit:Landroid/content/SharedPreferences$Editor;

    const-string v4, "dsa_phone_number_sim2"

    iget-object v5, p0, Lcom/android/phone/DsaPhoneNumber;->mSim2value:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v3, p0, Lcom/android/phone/DsaPhoneNumber;->mEdit:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Change SIM 2 number : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/phone/DsaPhoneNumber;->mSimnumber:[Ljava/lang/String;

    aget-object v4, v4, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/DsaPhoneNumber;->mSim2value:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/DsaPhoneNumber;->dsaLog(Ljava/lang/String;)V

    :cond_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "DsaExtraInitial"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "com.android.phone.DsaSelectSimCard"

    invoke-virtual {v2, p0, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/phone/DsaPhoneNumber;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "extra_init_dialog"

    invoke-virtual {v1, v3, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "extra_init_dialog"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_2
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/android/phone/DsaPhoneNumber;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/DsaPhoneNumber;->finish()V

    return-void

    :catch_0
    move-exception v0

    const-string v3, "DsaPhoneNumber"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No activity found for intent : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    :cond_3
    iget-boolean v3, p0, Lcom/android/phone/DsaPhoneNumber;->mFromSetupWizard:Z

    if-eqz v3, :cond_6

    const-string v3, "DsaPhoneNumber"

    const-string v4, "softkeyRun2[Next]"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/phone/DsaPhoneNumber;->mSim1value:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/phone/DsaPhoneNumber;->mSimnumber:[Ljava/lang/String;

    aget-object v4, v4, v7

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/phone/DsaPhoneNumber;->mEdit:Landroid/content/SharedPreferences$Editor;

    const-string v4, "dsa_phone_number_sim1"

    iget-object v5, p0, Lcom/android/phone/DsaPhoneNumber;->mSim1value:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v3, p0, Lcom/android/phone/DsaPhoneNumber;->mEdit:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Change SIM 1 number : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/phone/DsaPhoneNumber;->mSimnumber:[Ljava/lang/String;

    aget-object v4, v4, v7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/DsaPhoneNumber;->mSim1value:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/DsaPhoneNumber;->dsaLog(Ljava/lang/String;)V

    :cond_4
    iget-object v3, p0, Lcom/android/phone/DsaPhoneNumber;->mSim2value:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/phone/DsaPhoneNumber;->mSimnumber:[Ljava/lang/String;

    aget-object v4, v4, v6

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/android/phone/DsaPhoneNumber;->mEdit:Landroid/content/SharedPreferences$Editor;

    const-string v4, "dsa_phone_number_sim2"

    iget-object v5, p0, Lcom/android/phone/DsaPhoneNumber;->mSim2value:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v3, p0, Lcom/android/phone/DsaPhoneNumber;->mEdit:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Change SIM 2 number : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/phone/DsaPhoneNumber;->mSimnumber:[Ljava/lang/String;

    aget-object v4, v4, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/DsaPhoneNumber;->mSim2value:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/DsaPhoneNumber;->dsaLog(Ljava/lang/String;)V

    :cond_5
    const/4 v3, -0x1

    invoke-virtual {p0, v3}, Lcom/android/phone/DsaPhoneNumber;->setResult(I)V

    goto/16 :goto_0

    :cond_6
    const-string v3, "DsaPhoneNumber"

    const-string v4, "softkeyRun2[Cancel]"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.class public Lcom/android/phone/EditFdnContactScreen;
.super Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;
.source "EditFdnContactScreen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/EditFdnContactScreen$QueryHandler;
    }
.end annotation


# static fields
.field private static final COLUMN_NAMES:[Ljava/lang/String;

.field private static final CONTACT_IMPORT_INTENT:Landroid/content/Intent;

.field private static final NUM_PROJECTION:[Ljava/lang/String;


# instance fields
.field final ADN_LIKE_CAPA_COLUMN_NAMES:[Ljava/lang/String;

.field private final DEFAULT_RESULT:Ljava/lang/String;

.field private final DIAL_STR_TOO_LONG:Ljava/lang/String;

.field private final ENABLE_PUK2_REQUEST:Ljava/lang/String;

.field private final INVALID_CHARACTERS_IN_TEXT_STR:Ljava/lang/String;

.field private final NETWORK_SERVICE_ERROR:Ljava/lang/String;

.field private final PASSWORD_INCORRECT:Ljava/lang/String;

.field private final TEXT_STR_TOO_LONG:Ljava/lang/String;

.field private actionBar:Landroid/app/ActionBar;

.field capaUri:Landroid/net/Uri;

.field private handler:Landroid/os/Handler;

.field private imm:Landroid/view/inputmethod/InputMethodManager;

.field private mAddContact:Z

.field private mChangeContactFail:Z

.field protected mCursor:Landroid/database/Cursor;

.field private mDataBusy:Z

.field private mHandler:Landroid/os/Handler;

.field private mIndex:Ljava/lang/String;

.field private mIsRefreshingSIM:Z

.field private mMax_Count:I

.field private mName:Ljava/lang/String;

.field private mNameField:Landroid/widget/EditText;

.field private mName_MaxLength:I

.field private mNumber:Ljava/lang/String;

.field private mNumberField:Landroid/widget/EditText;

.field private mNumber_MaxLength:I

.field private final mOnFocusChangeHandler:Landroid/view/View$OnFocusChangeListener;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPin2:Ljava/lang/String;

.field private mPin2Field:Landroid/widget/EditText;

.field private mQueryHandler:Lcom/android/phone/EditFdnContactScreen$QueryHandler;

.field private mSaveButton:Landroid/widget/Button;

.field private mUsedCount:I

.field private toastAlert:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "name"

    aput-object v1, v0, v3

    const-string v1, "number"

    aput-object v1, v0, v4

    const-string v1, "anr_number"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "anrA_number"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "anrB_number"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "anrC_number"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "emails"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "adn_index"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/EditFdnContactScreen;->COLUMN_NAMES:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "display_name"

    aput-object v1, v0, v3

    const-string v1, "data1"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/phone/EditFdnContactScreen;->NUM_PROJECTION:[Ljava/lang/String;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/phone/EditFdnContactScreen;->CONTACT_IMPORT_INTENT:Landroid/content/Intent;

    sget-object v0, Lcom/android/phone/EditFdnContactScreen;->CONTACT_IMPORT_INTENT:Landroid/content/Intent;

    const-string v1, "vnd.android.cursor.dir/phone_v2"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;-><init>()V

    const-string v0, "0"

    iput-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->DEFAULT_RESULT:Ljava/lang/String;

    const-string v0, "-1001"

    iput-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->NETWORK_SERVICE_ERROR:Ljava/lang/String;

    const-string v0, "-1003"

    iput-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->PASSWORD_INCORRECT:Ljava/lang/String;

    const-string v0, "-1005"

    iput-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->ENABLE_PUK2_REQUEST:Ljava/lang/String;

    const-string v0, "-1020"

    iput-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->TEXT_STR_TOO_LONG:Ljava/lang/String;

    const-string v0, "-1021"

    iput-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->DIAL_STR_TOO_LONG:Ljava/lang/String;

    const-string v0, "-1022"

    iput-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->INVALID_CHARACTERS_IN_TEXT_STR:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/android/phone/EditFdnContactScreen;->mChangeContactFail:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mCursor:Landroid/database/Cursor;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "maxCount"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "usedCount"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "firstIndex"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "name_MaxLength"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "number_MaxLength"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->ADN_LIKE_CAPA_COLUMN_NAMES:[Ljava/lang/String;

    const-string v0, "content://icc/capacity"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->capaUri:Landroid/net/Uri;

    new-instance v0, Lcom/android/phone/EditFdnContactScreen$13;

    invoke-direct {v0, p0}, Lcom/android/phone/EditFdnContactScreen$13;-><init>(Lcom/android/phone/EditFdnContactScreen;)V

    iput-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/android/phone/EditFdnContactScreen$21;

    invoke-direct {v0, p0}, Lcom/android/phone/EditFdnContactScreen$21;-><init>(Lcom/android/phone/EditFdnContactScreen;)V

    iput-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mOnFocusChangeHandler:Landroid/view/View$OnFocusChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/EditFdnContactScreen;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mNameField:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/EditFdnContactScreen;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->imm:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/phone/EditFdnContactScreen;)I
    .locals 1

    iget v0, p0, Lcom/android/phone/EditFdnContactScreen;->mUsedCount:I

    return v0
.end method

.method static synthetic access$1002(Lcom/android/phone/EditFdnContactScreen;I)I
    .locals 0

    iput p1, p0, Lcom/android/phone/EditFdnContactScreen;->mUsedCount:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/phone/EditFdnContactScreen;)I
    .locals 1

    iget v0, p0, Lcom/android/phone/EditFdnContactScreen;->mName_MaxLength:I

    return v0
.end method

.method static synthetic access$1102(Lcom/android/phone/EditFdnContactScreen;I)I
    .locals 0

    iput p1, p0, Lcom/android/phone/EditFdnContactScreen;->mName_MaxLength:I

    return p1
.end method

.method static synthetic access$1200(Lcom/android/phone/EditFdnContactScreen;)I
    .locals 1

    iget v0, p0, Lcom/android/phone/EditFdnContactScreen;->mNumber_MaxLength:I

    return v0
.end method

.method static synthetic access$1202(Lcom/android/phone/EditFdnContactScreen;I)I
    .locals 0

    iput p1, p0, Lcom/android/phone/EditFdnContactScreen;->mNumber_MaxLength:I

    return p1
.end method

.method static synthetic access$1300(Lcom/android/phone/EditFdnContactScreen;)Landroid/widget/Toast;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->toastAlert:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/phone/EditFdnContactScreen;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/EditFdnContactScreen;->mAddContact:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/android/phone/EditFdnContactScreen;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/EditFdnContactScreen;->addContact()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/phone/EditFdnContactScreen;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/EditFdnContactScreen;->updateContact()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/phone/EditFdnContactScreen;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/phone/EditFdnContactScreen;->handleResult(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/EditFdnContactScreen;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mNumberField:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/EditFdnContactScreen;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mPin2Field:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/EditFdnContactScreen;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/EditFdnContactScreen;->showStatus(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/EditFdnContactScreen;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/phone/EditFdnContactScreen;->log(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/phone/EditFdnContactScreen;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/EditFdnContactScreen;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/phone/EditFdnContactScreen;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/EditFdnContactScreen;->displayProgress(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/phone/EditFdnContactScreen;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/EditFdnContactScreen;->mIsRefreshingSIM:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/phone/EditFdnContactScreen;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/EditFdnContactScreen;->mIsRefreshingSIM:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/phone/EditFdnContactScreen;)I
    .locals 1

    iget v0, p0, Lcom/android/phone/EditFdnContactScreen;->mMax_Count:I

    return v0
.end method

.method static synthetic access$902(Lcom/android/phone/EditFdnContactScreen;I)I
    .locals 0

    iput p1, p0, Lcom/android/phone/EditFdnContactScreen;->mMax_Count:I

    return p1
.end method

.method private addContact()V
    .locals 8

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v3, "addContact"

    invoke-direct {p0, v3}, Lcom/android/phone/EditFdnContactScreen;->log(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mMax_Count in addContact() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/EditFdnContactScreen;->mMax_Count:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/EditFdnContactScreen;->log(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/phone/EditFdnContactScreen;->mMax_Count:I

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/phone/EditFdnContactScreen;->mMax_Count:I

    iget v4, p0, Lcom/android/phone/EditFdnContactScreen;->mUsedCount:I

    if-gt v3, v4, :cond_0

    iput-boolean v6, p0, Lcom/android/phone/EditFdnContactScreen;->mChangeContactFail:Z

    invoke-virtual {p0}, Lcom/android/phone/EditFdnContactScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a01e2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/EditFdnContactScreen;->showStatus(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/phone/EditFdnContactScreen;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/phone/EditFdnContactScreen$15;

    invoke-direct {v4, p0}, Lcom/android/phone/EditFdnContactScreen$15;-><init>(Lcom/android/phone/EditFdnContactScreen;)V

    const-wide/16 v6, 0x7d0

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void

    :cond_0
    iput-boolean v5, p0, Lcom/android/phone/EditFdnContactScreen;->mChangeContactFail:Z

    invoke-direct {p0}, Lcom/android/phone/EditFdnContactScreen;->getContentURI()Landroid/net/Uri;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/phone/EditFdnContactScreen;->getNumberFromTextField()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Landroid/content/ContentValues;

    const/4 v3, 0x3

    invoke-direct {v0, v3}, Landroid/content/ContentValues;-><init>(I)V

    const-string v3, "tag"

    invoke-direct {p0}, Lcom/android/phone/EditFdnContactScreen;->getNameFromTextField()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "number"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "pin2"

    iget-object v4, p0, Lcom/android/phone/EditFdnContactScreen;->mPin2:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    invoke-virtual {p0}, Lcom/android/phone/EditFdnContactScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/android/phone/EditFdnContactScreen$QueryHandler;-><init>(Lcom/android/phone/EditFdnContactScreen;Landroid/content/ContentResolver;)V

    iput-object v3, p0, Lcom/android/phone/EditFdnContactScreen;->mQueryHandler:Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    iget-object v3, p0, Lcom/android/phone/EditFdnContactScreen;->mQueryHandler:Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    const/4 v4, 0x0

    invoke-virtual {v3, v5, v4, v2, v0}, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->startInsert(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;)V

    invoke-direct {p0, v6}, Lcom/android/phone/EditFdnContactScreen;->displayProgress(Z)V

    goto :goto_0
.end method

.method private authenticatePin2()V
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/EditFdnContactScreen;->getPin2()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mPin2:Ljava/lang/String;

    return-void
.end method

.method private deleteSelected()V
    .locals 6

    iget-boolean v0, p0, Lcom/android/phone/EditFdnContactScreen;->mAddContact:Z

    if-nez v0, :cond_0

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v0, "name"

    iget-object v1, p0, Lcom/android/phone/EditFdnContactScreen;->mName:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "number"

    iget-object v1, p0, Lcom/android/phone/EditFdnContactScreen;->mNumber:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "adn_index"

    iget-object v1, p0, Lcom/android/phone/EditFdnContactScreen;->mIndex:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-class v0, Lcom/android/phone/DeleteFdnContactScreen;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x190

    const v5, 0x7f0a01b7

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/phone/EditFdnContactScreen;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    :cond_0
    return-void
.end method

.method private displayProgress(Z)V
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    iput-boolean p1, p0, Lcom/android/phone/EditFdnContactScreen;->mDataBusy:Z

    const-string v0, "menu_simplification"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, v1}, Lcom/android/phone/EditFdnContactScreen;->setHasOptionsMenu(Z)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/EditFdnContactScreen;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/EditFdnContactScreen;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/EditFdnContactScreen;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, 0x5

    iget-boolean v0, p0, Lcom/android/phone/EditFdnContactScreen;->mDataBusy:Z

    if-eqz v0, :cond_5

    const/4 v0, -0x1

    :goto_1
    invoke-virtual {v3, v4, v0}, Landroid/view/Window;->setFeatureInt(II)V

    :cond_0
    const-string v0, "tablet_device"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mSaveButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mSaveButton:Landroid/widget/Button;

    iget-boolean v3, p0, Lcom/android/phone/EditFdnContactScreen;->mDataBusy:Z

    if-nez v3, :cond_6

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/EditFdnContactScreen;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/phone/EditFdnContactScreen;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->invalidateOptionsMenu()V

    :cond_2
    return-void

    :cond_3
    iget-boolean v0, p0, Lcom/android/phone/EditFdnContactScreen;->mDataBusy:Z

    if-nez v0, :cond_4

    move v0, v1

    :goto_3
    invoke-virtual {p0, v0}, Lcom/android/phone/EditFdnContactScreen;->setHasOptionsMenu(Z)V

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_3

    :cond_5
    const/4 v0, -0x2

    goto :goto_1

    :cond_6
    move v1, v2

    goto :goto_2
.end method

.method private getContentURI()Landroid/net/Uri;
    .locals 3

    const-string v1, "feature_multisim"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSimId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/phone/FdnSetting;->mSimId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/EditFdnContactScreen;->log(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->getInsertedSimCard()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    sget v1, Lcom/android/phone/FdnSetting;->mSimId:I

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://icc/fdn/from_contacts/subId/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    aget v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "content://icc/fdn/from_contacts"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v1, "content://icc/fdn/from_contacts"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0
.end method

.method private getNameFromTextField()Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Lcom/android/phone/EditFdnContactScreen;->mNameField:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getNumberFromTextField()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mNumberField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPin2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mPin2Field:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleResult(ZLjava/lang/String;)V
    .locals 6

    const-wide/16 v4, 0x7d0

    invoke-virtual {p0}, Lcom/android/phone/EditFdnContactScreen;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "handleResult: Fragment finished."

    invoke-direct {p0, v1}, Lcom/android/phone/EditFdnContactScreen;->log(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_2

    const-string v1, "handleResult: success!"

    invoke-direct {p0, v1}, Lcom/android/phone/EditFdnContactScreen;->log(Ljava/lang/String;)V

    const-string v1, "fdn_contact_search"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/phone/FDNContactsCache;->getInstance()Lcom/android/phone/FDNContactsCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/FDNContactsCache;->clearCache()V

    :cond_1
    iget-object v1, p0, Lcom/android/phone/EditFdnContactScreen;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/phone/EditFdnContactScreen$16;

    invoke-direct {v2, p0}, Lcom/android/phone/EditFdnContactScreen$16;-><init>(Lcom/android/phone/EditFdnContactScreen;)V

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_2
    const-string v1, "handleResult: failed!"

    invoke-direct {p0, v1}, Lcom/android/phone/EditFdnContactScreen;->log(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Deliverd error cause from RIL = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/EditFdnContactScreen;->log(Ljava/lang/String;)V

    const-string v1, "-1022"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "-1021"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    invoke-virtual {p0}, Lcom/android/phone/EditFdnContactScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a01bb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/EditFdnContactScreen;->showStatus(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/phone/EditFdnContactScreen;->mNumberField:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->selectAll()V

    iget-object v1, p0, Lcom/android/phone/EditFdnContactScreen;->mNumberField:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    :cond_4
    const-string v1, "-1020"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/android/phone/EditFdnContactScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a01e3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/EditFdnContactScreen;->showStatus(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/phone/EditFdnContactScreen;->mNameField:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->selectAll()V

    iget-object v1, p0, Lcom/android/phone/EditFdnContactScreen;->mNameField:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_0

    :cond_5
    const-string v1, "-1003"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/android/phone/EditFdnContactScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a01ba

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/EditFdnContactScreen;->showStatus(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/phone/EditFdnContactScreen;->mPin2Field:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->selectAll()V

    iget-object v1, p0, Lcom/android/phone/EditFdnContactScreen;->mPin2Field:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v1, p0, Lcom/android/phone/EditFdnContactScreen;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/android/phone/EditFdnContactScreen$17;

    invoke-direct {v2, p0}, Lcom/android/phone/EditFdnContactScreen$17;-><init>(Lcom/android/phone/EditFdnContactScreen;)V

    const-wide/16 v4, 0x64

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :cond_6
    const-string v1, "-1005"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/EditFdnContactScreen;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0a01e4

    invoke-virtual {p0, v1}, Lcom/android/phone/EditFdnContactScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0a01de

    invoke-virtual {p0, v1}, Lcom/android/phone/EditFdnContactScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0a008e

    new-instance v2, Lcom/android/phone/EditFdnContactScreen$18;

    invoke-direct {v2, p0}, Lcom/android/phone/EditFdnContactScreen$18;-><init>(Lcom/android/phone/EditFdnContactScreen;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/android/phone/EditFdnContactScreen$19;

    invoke-direct {v1, p0}, Lcom/android/phone/EditFdnContactScreen$19;-><init>(Lcom/android/phone/EditFdnContactScreen;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Network error service error occured!!, segment = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/EditFdnContactScreen;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/phone/EditFdnContactScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00ed

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/EditFdnContactScreen;->showStatus(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/phone/EditFdnContactScreen;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/phone/EditFdnContactScreen$20;

    invoke-direct {v2, p0}, Lcom/android/phone/EditFdnContactScreen$20;-><init>(Lcom/android/phone/EditFdnContactScreen;)V

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "EditFdnContactScreen"

    invoke-static {v0, p1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "EditFdnContactScreen"

    invoke-static {v0, p1, p2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    return-void
.end method

.method private resolveIntent()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/phone/EditFdnContactScreen;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/EditFdnContactScreen;->mName:Ljava/lang/String;

    const-string v1, "number"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/EditFdnContactScreen;->mNumber:Ljava/lang/String;

    const-string v1, "adn_index"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/EditFdnContactScreen;->mIndex:Ljava/lang/String;

    :cond_0
    iget-object v1, p0, Lcom/android/phone/EditFdnContactScreen;->mName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/EditFdnContactScreen;->mNumber:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/phone/EditFdnContactScreen;->mAddContact:Z

    :cond_1
    return-void
.end method

.method private saveOrCancel()V
    .locals 4

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/EditFdnContactScreen;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a01a7

    invoke-virtual {p0, v2}, Lcom/android/phone/EditFdnContactScreen;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a01a8

    invoke-virtual {p0, v2}, Lcom/android/phone/EditFdnContactScreen;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a01b4

    new-instance v3, Lcom/android/phone/EditFdnContactScreen$12;

    invoke-direct {v3, p0}, Lcom/android/phone/EditFdnContactScreen$12;-><init>(Lcom/android/phone/EditFdnContactScreen;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a008e

    new-instance v3, Lcom/android/phone/EditFdnContactScreen$11;

    invoke-direct {v3, p0}, Lcom/android/phone/EditFdnContactScreen$11;-><init>(Lcom/android/phone/EditFdnContactScreen;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a04f8

    new-instance v3, Lcom/android/phone/EditFdnContactScreen$10;

    invoke-direct {v3, p0}, Lcom/android/phone/EditFdnContactScreen$10;-><init>(Lcom/android/phone/EditFdnContactScreen;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private setupView(Landroid/view/View;)V
    .locals 4

    const/4 v2, 0x1

    const-string v0, "setupView()"

    invoke-direct {p0, v0}, Lcom/android/phone/EditFdnContactScreen;->log(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onQueryComplete: cursor.getShort(0)="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/EditFdnContactScreen;->mMax_Count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/android/phone/EditFdnContactScreen;->log(Ljava/lang/String;Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onQueryComplete: cursor.getShort(1)="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/EditFdnContactScreen;->mUsedCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/android/phone/EditFdnContactScreen;->log(Ljava/lang/String;Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onQueryComplete: cursor.getShort(2)="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/EditFdnContactScreen;->mName_MaxLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/android/phone/EditFdnContactScreen;->log(Ljava/lang/String;Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onQueryComplete: cursor.getShort(3)="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/EditFdnContactScreen;->mNumber_MaxLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/android/phone/EditFdnContactScreen;->log(Ljava/lang/String;Z)V

    const v0, 0x7f1000ba

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mNameField:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mNameField:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mNameField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    :cond_0
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/phone/EditFdnContactScreen$14;

    invoke-direct {v1, p0}, Lcom/android/phone/EditFdnContactScreen$14;-><init>(Lcom/android/phone/EditFdnContactScreen;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mNameField:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mNameField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mNameField:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mNameField:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/phone/EditFdnContactScreen;->mOnFocusChangeHandler:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mNameField:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/phone/EditFdnContactScreen;->mNameField:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_1
    const v0, 0x7f1000bb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mNumberField:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mNumberField:Landroid/widget/EditText;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mNumberField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mNumberField:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mNumberField:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/phone/EditFdnContactScreen;->mOnFocusChangeHandler:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    :cond_2
    const v0, 0x7f1000bd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mPin2Field:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mPin2Field:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mPin2Field:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DigitsKeyListener;->getInstance()Landroid/text/method/DigitsKeyListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mPin2Field:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :cond_3
    iget-boolean v0, p0, Lcom/android/phone/EditFdnContactScreen;->mAddContact:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mNameField:Landroid/widget/EditText;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mNameField:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/phone/EditFdnContactScreen;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mNameField:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/phone/EditFdnContactScreen;->mNameField:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_4
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mNumberField:Landroid/widget/EditText;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mNumberField:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/phone/EditFdnContactScreen;->mNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    return-void
.end method

.method private showStatus(Ljava/lang/CharSequence;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->toastAlert:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->toastAlert:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method private updateContact()V
    .locals 9

    const/4 v2, 0x0

    const-string v0, "updateContact"

    invoke-direct {p0, v0}, Lcom/android/phone/EditFdnContactScreen;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/phone/EditFdnContactScreen;->getNameFromTextField()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0}, Lcom/android/phone/EditFdnContactScreen;->getNumberFromTextField()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0}, Lcom/android/phone/EditFdnContactScreen;->getContentURI()Landroid/net/Uri;

    move-result-object v3

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "feature_multisim_dsda"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ctc_dual_mode_single_phone_byqc"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "tag"

    iget-object v1, p0, Lcom/android/phone/EditFdnContactScreen;->mName:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "number"

    iget-object v1, p0, Lcom/android/phone/EditFdnContactScreen;->mNumber:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v0, "adn_index"

    iget-object v1, p0, Lcom/android/phone/EditFdnContactScreen;->mIndex:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "newTag"

    invoke-virtual {v4, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "newNumber"

    invoke-virtual {v4, v0, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "pin2"

    iget-object v1, p0, Lcom/android/phone/EditFdnContactScreen;->mPin2:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    invoke-virtual {p0}, Lcom/android/phone/EditFdnContactScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/phone/EditFdnContactScreen$QueryHandler;-><init>(Lcom/android/phone/EditFdnContactScreen;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mQueryHandler:Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mQueryHandler:Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    const/4 v1, 0x0

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/phone/EditFdnContactScreen;->displayProgress(Z)V

    return-void
.end method

.method private validatePin2(Ljava/lang/String;)Z
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-le v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public finish()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/phone/EditFdnContactScreen;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/EditFdnContactScreen;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    iget-boolean v1, p0, Lcom/android/phone/EditFdnContactScreen;->mChangeContactFail:Z

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/EditFdnContactScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-boolean v1, p0, Lcom/android/phone/EditFdnContactScreen;->mAddContact:Z

    if-eqz v1, :cond_2

    const v1, 0x7f0a01b5

    :goto_1
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/EditFdnContactScreen;->showStatus(Ljava/lang/CharSequence;)V

    :cond_1
    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Landroid/preference/PreferenceActivity;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    goto :goto_0

    :cond_2
    const v1, 0x7f0a01b6

    goto :goto_1
.end method

.method public getByteArrayText(Ljava/lang/String;)[B
    .locals 9

    const/4 v6, 0x0

    new-array v0, v6, [B

    new-array v1, v6, [B

    const/4 v5, 0x0

    const/4 v2, 0x0

    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v2, v6, :cond_0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptets(CZ)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x1

    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isEncodable : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/phone/EditFdnContactScreen;->log(Ljava/lang/String;)V

    if-eqz v5, :cond_1

    invoke-static {p1}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitPacked(Ljava/lang/String;)[B

    move-result-object v0

    :goto_2
    return-object v0

    :catch_0
    move-exception v4

    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    :try_start_1
    const-string v6, "ISO-10646-UCS-2"

    invoke-virtual {p1, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    array-length v6, v1

    new-array v0, v6, [B

    const/4 v6, 0x2

    const/4 v7, 0x0

    array-length v8, v1

    add-int/lit8 v8, v8, -0x2

    invoke-static {v1, v6, v0, v7, v8}, Ljava/lang/System;->arraycopy([BI[BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 11

    const/4 v3, -0x1

    const/4 v2, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityResult request:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " result:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/android/phone/EditFdnContactScreen;->log(Ljava/lang/String;Z)V

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    if-eq p2, v3, :cond_1

    const-string v0, "onActivityResult: cancelled."

    invoke-direct {p0, v0}, Lcom/android/phone/EditFdnContactScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/EditFdnContactScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/phone/EditFdnContactScreen;->NUM_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const-string v0, "EditFdnContactScreen"

    const-string v1, "onActivityResult: bad contact data, no results found."

    invoke-static {v0, v1}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_3
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "EditFdnContactScreen"

    const-string v1, "onActivityResult: bad contact data, no results found."

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;Z)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_4
    :try_start_2
    const-string v0, "fdn_nameinput_maxlength_limit"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v9, 0x1

    const/4 v0, 0x0

    new-array v7, v0, [B

    const-string v10, ""

    const/4 v0, 0x1

    new-array v6, v0, [Landroid/text/InputFilter;

    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/android/phone/EditFdnContactScreen;->mName_MaxLength:I

    if-lez v0, :cond_8

    invoke-virtual {p0, v10}, Lcom/android/phone/EditFdnContactScreen;->getByteArrayText(Ljava/lang/String;)[B

    move-result-object v7

    :goto_2
    array-length v0, v7

    iget v1, p0, Lcom/android/phone/EditFdnContactScreen;->mName_MaxLength:I

    if-le v0, v1, :cond_6

    if-eqz v9, :cond_5

    const/4 v9, 0x0

    const/4 v0, 0x0

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v1

    iget v2, p0, Lcom/android/phone/EditFdnContactScreen;->mName_MaxLength:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/phone/EditFdnContactScreen;->getByteArrayText(Ljava/lang/String;)[B

    move-result-object v7

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v1

    iget v2, p0, Lcom/android/phone/EditFdnContactScreen;->mName_MaxLength:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/phone/EditFdnContactScreen;->getByteArrayText(Ljava/lang/String;)[B

    move-result-object v7

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    iget v2, p0, Lcom/android/phone/EditFdnContactScreen;->mName_MaxLength:I

    invoke-direct {v1, v2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v1, v6, v0

    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mNameField:Landroid/widget/EditText;

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mNameField:Landroid/widget/EditText;

    invoke-virtual {v0, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mNameField:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/phone/EditFdnContactScreen;->mNameField:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mNumberField:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mNumberField:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/phone/EditFdnContactScreen;->mNumberField:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mPin2Field:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mPin2Field:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/phone/EditFdnContactScreen;->mPin2Field:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/phone/EditFdnContactScreen$9;

    invoke-direct {v1, p0}, Lcom/android/phone/EditFdnContactScreen$9;-><init>(Lcom/android/phone/EditFdnContactScreen;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    if-eqz v8, :cond_7

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v0

    :cond_8
    :try_start_3
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mNameField:Landroid/widget/EditText;

    invoke-virtual {v0, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_9
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mNameField:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :sswitch_1
    if-ne p2, v3, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/EditFdnContactScreen;->finish()V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0x190 -> :sswitch_1
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string v0, "Configuration"

    const-string v1, "changed "

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 8

    const v7, 0x7f0a020b

    const v6, 0x7f02009a

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1, p2}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const-string v4, "order_neg_pos_buttons"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v1, v2

    :goto_0
    const/4 v4, 0x3

    const v5, 0x7f0a0287

    invoke-interface {p1, v2, v4, v1, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v4

    const/4 v5, 0x6

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object v5

    iget-boolean v4, p0, Lcom/android/phone/EditFdnContactScreen;->mDataBusy:Z

    if-nez v4, :cond_1

    move v4, v3

    :goto_1
    invoke-interface {v5, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    invoke-virtual {p0}, Lcom/android/phone/EditFdnContactScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-boolean v4, p0, Lcom/android/phone/EditFdnContactScreen;->mAddContact:Z

    if-nez v4, :cond_2

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v2, v3, v2, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/4 v3, 0x2

    const v4, 0x7f0a01b0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v2, v3, v2, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f02007f

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :goto_2
    return-void

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    move v4, v2

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v2, v3, v2, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_2
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 12

    const/4 v2, 0x0

    const/4 v11, 0x1

    const/4 v1, 0x0

    const-string v0, "tablet_device"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    invoke-virtual {p0}, Lcom/android/phone/EditFdnContactScreen;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->actionBar:Landroid/app/ActionBar;

    invoke-virtual {p0, v11}, Lcom/android/phone/EditFdnContactScreen;->setHasOptionsMenu(Z)V

    const v0, 0x7f040039

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    invoke-direct {p0, v1}, Lcom/android/phone/EditFdnContactScreen;->displayProgress(Z)V

    iput-boolean v1, p0, Lcom/android/phone/EditFdnContactScreen;->mIsRefreshingSIM:Z

    new-instance v0, Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    invoke-virtual {p0}, Lcom/android/phone/EditFdnContactScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {v0, p0, v3}, Lcom/android/phone/EditFdnContactScreen$QueryHandler;-><init>(Lcom/android/phone/EditFdnContactScreen;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mQueryHandler:Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    const-string v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSimId : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v3, Lcom/android/phone/FdnSetting;->mSimId:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/EditFdnContactScreen;->log(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->getInsertedSimCard()I

    move-result v0

    if-le v0, v11, :cond_1

    sget v0, Lcom/android/phone/FdnSetting;->mSimId:I

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://icc/capacity/subId/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget v3, v9, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->capaUri:Landroid/net/Uri;

    :goto_0
    sget v0, Lcom/android/phone/FdnSetting;->mSimId:I

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsMultiSIM;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    :cond_0
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mQueryHandler:Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    iget-object v3, p0, Lcom/android/phone/EditFdnContactScreen;->capaUri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/phone/EditFdnContactScreen;->ADN_LIKE_CAPA_COLUMN_NAMES:[Ljava/lang/String;

    const-string v5, "EF_TYPE = 28475"

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v11}, Lcom/android/phone/EditFdnContactScreen;->displayProgress(Z)V

    invoke-virtual {p0}, Lcom/android/phone/EditFdnContactScreen;->getActivity()Landroid/app/Activity;

    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/android/phone/EditFdnContactScreen;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->imm:Landroid/view/inputmethod/InputMethodManager;

    invoke-direct {p0}, Lcom/android/phone/EditFdnContactScreen;->resolveIntent()V

    invoke-direct {p0, v10}, Lcom/android/phone/EditFdnContactScreen;->setupView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/phone/EditFdnContactScreen;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v2, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->toastAlert:Landroid/widget/Toast;

    return-object v10

    :cond_1
    const-string v0, "content://icc/capacity"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->capaUri:Landroid/net/Uri;

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/phone/EditFdnContactScreen;->mNumberField:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/phone/EditFdnContactScreen;->mPin2Field:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onDestroyView()V

    const-string v0, "onDestroyView()"

    invoke-direct {p0, v0}, Lcom/android/phone/EditFdnContactScreen;->log(Ljava/lang/String;)V

    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onKeyUp = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/EditFdnContactScreen;->log(Ljava/lang/String;)V

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    invoke-direct {p0}, Lcom/android/phone/EditFdnContactScreen;->saveOrCancel()V

    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    const/4 v1, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    :sswitch_0
    :try_start_0
    sget-object v2, Lcom/android/phone/EditFdnContactScreen;->CONTACT_IMPORT_INTENT:Landroid/content/Intent;

    const/16 v3, 0xc8

    invoke-virtual {p0, v2, v3}, Lcom/android/phone/EditFdnContactScreen;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "EditFdnContactScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startActivityForResult() failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :sswitch_1
    invoke-direct {p0}, Lcom/android/phone/EditFdnContactScreen;->deleteSelected()V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0}, Lcom/android/phone/EditFdnContactScreen;->softkeyLeftRun()V

    goto :goto_0

    :sswitch_3
    invoke-virtual {p0}, Lcom/android/phone/EditFdnContactScreen;->softkeyRightRun()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x102002c -> :sswitch_3
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    return-void
.end method

.method public onResume()V
    .locals 4

    const-wide/16 v2, 0x64

    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onResume()V

    const-string v0, "onResume "

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/EditFdnContactScreen;->log(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mNameField:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mNameField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/phone/EditFdnContactScreen$1;

    invoke-direct {v1, p0}, Lcom/android/phone/EditFdnContactScreen$1;-><init>(Lcom/android/phone/EditFdnContactScreen;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mNumberField:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mNumberField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/phone/EditFdnContactScreen$2;

    invoke-direct {v1, p0}, Lcom/android/phone/EditFdnContactScreen$2;-><init>(Lcom/android/phone/EditFdnContactScreen;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mPin2Field:Landroid/widget/EditText;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mPin2Field:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/phone/EditFdnContactScreen$3;

    invoke-direct {v1, p0}, Lcom/android/phone/EditFdnContactScreen$3;-><init>(Lcom/android/phone/EditFdnContactScreen;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method

.method public onStop()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onStop()V

    const-string v0, "EditFdnContactScreen"

    const-string v1, "onStop()"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/phone/EditFdnContactScreen;->mNumberField:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/phone/EditFdnContactScreen;->mPin2Field:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->toastAlert:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    invoke-direct {p0, v2}, Lcom/android/phone/EditFdnContactScreen;->displayProgress(Z)V

    return-void
.end method

.method public softkeyLeftRun()V
    .locals 10

    const-wide/16 v4, 0x64

    const/4 v9, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/phone/EditFdnContactScreen;->getNumberFromTextField()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->toastAlert:Landroid/widget/Toast;

    const v1, 0x7f0a01e5

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(I)V

    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->toastAlert:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mNumberField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/phone/EditFdnContactScreen$4;

    invoke-direct {v1, p0}, Lcom/android/phone/EditFdnContactScreen$4;-><init>(Lcom/android/phone/EditFdnContactScreen;)V

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mPin2Field:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->toastAlert:Landroid/widget/Toast;

    const v1, 0x7f0a01b1

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(I)V

    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->toastAlert:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mPin2Field:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/phone/EditFdnContactScreen$5;

    invoke-direct {v1, p0}, Lcom/android/phone/EditFdnContactScreen$5;-><init>(Lcom/android/phone/EditFdnContactScreen;)V

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/phone/EditFdnContactScreen;->getPin2()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/EditFdnContactScreen;->validatePin2(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->toastAlert:Landroid/widget/Toast;

    const v1, 0x7f0a01da

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(I)V

    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->toastAlert:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mPin2Field:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/phone/EditFdnContactScreen$6;

    invoke-direct {v1, p0}, Lcom/android/phone/EditFdnContactScreen$6;-><init>(Lcom/android/phone/EditFdnContactScreen;)V

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lcom/android/phone/EditFdnContactScreen;->mDataBusy:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/phone/EditFdnContactScreen;->authenticatePin2()V

    iput-boolean v9, p0, Lcom/android/phone/EditFdnContactScreen;->mIsRefreshingSIM:Z

    const-string v0, "content://icc/fdn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mSimId : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v4, Lcom/android/phone/FdnSetting;->mSimId:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/EditFdnContactScreen;->log(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->getInsertedSimCard()I

    move-result v0

    if-le v0, v9, :cond_4

    sget v0, Lcom/android/phone/FdnSetting;->mSimId:I

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://icc/fdn/subId/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget v4, v8, v1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    :cond_4
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mQueryHandler:Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    sget-object v4, Lcom/android/phone/EditFdnContactScreen;->COLUMN_NAMES:[Ljava/lang/String;

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v9}, Lcom/android/phone/EditFdnContactScreen;->displayProgress(Z)V

    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, p0, Lcom/android/phone/EditFdnContactScreen;->mNumberField:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, p0, Lcom/android/phone/EditFdnContactScreen;->mPin2Field:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto/16 :goto_0
.end method

.method public softkeyRightRun()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/phone/EditFdnContactScreen;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Landroid/preference/PreferenceActivity;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.class public Lcom/android/phone/GlobalDataRoamingAccess;
.super Landroid/preference/DialogPreference;
.source "GlobalDataRoamingAccess.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/GlobalDataRoamingAccess$ListViewRadioButtonAdapter;,
        Lcom/android/phone/GlobalDataRoamingAccess$GlobalDataRoamingAccessObserver;
    }
.end annotation


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mEntries:[Ljava/lang/CharSequence;

.field private mEntryValues:[Ljava/lang/CharSequence;

.field private mGlobalDataRoamingAccessObserver:Lcom/android/phone/GlobalDataRoamingAccess$GlobalDataRoamingAccessObserver;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mPosition:I

.field private mRadioButtonList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/RadioButton;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/android/phone/GlobalDataRoamingAccess;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/GlobalDataRoamingAccess;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/GlobalDataRoamingAccess;)V
    .locals 0
    .param p0    # Lcom/android/phone/GlobalDataRoamingAccess;

    invoke-direct {p0}, Lcom/android/phone/GlobalDataRoamingAccess;->positiveButtonClicked()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/GlobalDataRoamingAccess;)V
    .locals 0
    .param p0    # Lcom/android/phone/GlobalDataRoamingAccess;

    invoke-direct {p0}, Lcom/android/phone/GlobalDataRoamingAccess;->negativeButtonClicked()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/GlobalDataRoamingAccess;)[Ljava/lang/CharSequence;
    .locals 1
    .param p0    # Lcom/android/phone/GlobalDataRoamingAccess;

    iget-object v0, p0, Lcom/android/phone/GlobalDataRoamingAccess;->mEntries:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/GlobalDataRoamingAccess;)Landroid/view/LayoutInflater;
    .locals 1
    .param p0    # Lcom/android/phone/GlobalDataRoamingAccess;

    iget-object v0, p0, Lcom/android/phone/GlobalDataRoamingAccess;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/GlobalDataRoamingAccess;)Ljava/util/ArrayList;
    .locals 1
    .param p0    # Lcom/android/phone/GlobalDataRoamingAccess;

    iget-object v0, p0, Lcom/android/phone/GlobalDataRoamingAccess;->mRadioButtonList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/GlobalDataRoamingAccess;)I
    .locals 1
    .param p0    # Lcom/android/phone/GlobalDataRoamingAccess;

    iget v0, p0, Lcom/android/phone/GlobalDataRoamingAccess;->mPosition:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/phone/GlobalDataRoamingAccess;I)I
    .locals 0
    .param p0    # Lcom/android/phone/GlobalDataRoamingAccess;
    .param p1    # I

    iput p1, p0, Lcom/android/phone/GlobalDataRoamingAccess;->mPosition:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/phone/GlobalDataRoamingAccess;I)Z
    .locals 1
    .param p0    # Lcom/android/phone/GlobalDataRoamingAccess;
    .param p1    # I

    invoke-direct {p0, p1}, Lcom/android/phone/GlobalDataRoamingAccess;->checkSecureSetting(I)Z

    move-result v0

    return v0
.end method

.method private checkSecureSetting(I)Z
    .locals 2
    .param p1    # I

    invoke-direct {p0}, Lcom/android/phone/GlobalDataRoamingAccess;->getMode()I

    move-result v0

    iget-object v1, p0, Lcom/android/phone/GlobalDataRoamingAccess;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v1, v1, p1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getMode()I
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/phone/GlobalDataRoamingAccess;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "data_roaming"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iget-object v3, p0, Lcom/android/phone/GlobalDataRoamingAccess;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "data_roaming_onetime"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x0

    if-ne v1, v6, :cond_0

    if-ne v0, v6, :cond_1

    const/4 v2, 0x1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x2

    goto :goto_0
.end method

.method private negativeButtonClicked()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/phone/GlobalDataRoamingAccess;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/GlobalDataRoamingAccess;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method private positiveButtonClicked()V
    .locals 4

    const/4 v2, -0x1

    iget-object v3, p0, Lcom/android/phone/GlobalDataRoamingAccess;->mRadioButtonList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Landroid/widget/RadioButton;->getId()I

    move-result v2

    :cond_1
    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    invoke-direct {p0, v2}, Lcom/android/phone/GlobalDataRoamingAccess;->checkSecureSetting(I)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-direct {p0, v2}, Lcom/android/phone/GlobalDataRoamingAccess;->setMode(I)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/GlobalDataRoamingAccess;->getDialog()Landroid/app/Dialog;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/android/phone/GlobalDataRoamingAccess;->getDialog()Landroid/app/Dialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    :cond_3
    return-void
.end method

.method private setMode(I)V
    .locals 4
    .param p1    # I

    const/4 v3, 0x1

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    iget-object v0, p0, Lcom/android/phone/GlobalDataRoamingAccess;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "data_roaming"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/phone/GlobalDataRoamingAccess;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "data_roaming_onetime"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/GlobalDataRoamingAccess;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "data_roaming"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/phone/GlobalDataRoamingAccess;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "data_roaming_onetime"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/GlobalDataRoamingAccess;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "data_roaming"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/phone/GlobalDataRoamingAccess;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "data_roaming_onetime"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .locals 5
    .param p1    # Landroid/view/View;

    const/4 v4, 0x0

    const/4 v3, 0x0

    const v1, 0x7f1000de

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/phone/GlobalDataRoamingAccess;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f04004a

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v4}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    iget-object v1, p0, Lcom/android/phone/GlobalDataRoamingAccess;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f040048

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v4}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    new-instance v1, Lcom/android/phone/GlobalDataRoamingAccess$ListViewRadioButtonAdapter;

    invoke-direct {v1, p0}, Lcom/android/phone/GlobalDataRoamingAccess$ListViewRadioButtonAdapter;-><init>(Lcom/android/phone/GlobalDataRoamingAccess;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    return-void
.end method

.method protected onCreateDialogView()Landroid/view/View;
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/phone/GlobalDataRoamingAccess;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09005c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/GlobalDataRoamingAccess;->mEntries:[Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/android/phone/GlobalDataRoamingAccess;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09005d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/GlobalDataRoamingAccess;->mEntryValues:[Ljava/lang/CharSequence;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/GlobalDataRoamingAccess;->mPosition:I

    iget-object v0, p0, Lcom/android/phone/GlobalDataRoamingAccess;->mEntries:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/GlobalDataRoamingAccess;->mEntryValues:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/GlobalDataRoamingAccess;->mEntries:[Ljava/lang/CharSequence;

    array-length v0, v0

    iget-object v1, p0, Lcom/android/phone/GlobalDataRoamingAccess;->mEntryValues:[Ljava/lang/CharSequence;

    array-length v1, v1

    if-eq v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ListPreference requires an entries array and an entryValues array which are both the same length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/GlobalDataRoamingAccess;->mRadioButtonList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/phone/GlobalDataRoamingAccess;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/GlobalDataRoamingAccess;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v0, Lcom/android/phone/GlobalDataRoamingAccess$GlobalDataRoamingAccessObserver;

    invoke-direct {v0, p0}, Lcom/android/phone/GlobalDataRoamingAccess$GlobalDataRoamingAccessObserver;-><init>(Lcom/android/phone/GlobalDataRoamingAccess;)V

    iput-object v0, p0, Lcom/android/phone/GlobalDataRoamingAccess;->mGlobalDataRoamingAccessObserver:Lcom/android/phone/GlobalDataRoamingAccess$GlobalDataRoamingAccessObserver;

    iget-object v0, p0, Lcom/android/phone/GlobalDataRoamingAccess;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "data_roaming"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/GlobalDataRoamingAccess;->mGlobalDataRoamingAccessObserver:Lcom/android/phone/GlobalDataRoamingAccess$GlobalDataRoamingAccessObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/phone/GlobalDataRoamingAccess;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "data_roaming_onetime"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/GlobalDataRoamingAccess;->mGlobalDataRoamingAccessObserver:Lcom/android/phone/GlobalDataRoamingAccess$GlobalDataRoamingAccessObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/phone/GlobalDataRoamingAccess;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "data_roam_access_notify"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/GlobalDataRoamingAccess;->mGlobalDataRoamingAccessObserver:Lcom/android/phone/GlobalDataRoamingAccess$GlobalDataRoamingAccessObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const v0, 0x7f040047

    invoke-virtual {p0, v0}, Lcom/android/phone/GlobalDataRoamingAccess;->setDialogLayoutResource(I)V

    invoke-super {p0}, Landroid/preference/DialogPreference;->onCreateDialogView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onDialogClosed(Z)V
    .locals 2
    .param p1    # Z

    iget-object v0, p0, Lcom/android/phone/GlobalDataRoamingAccess;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/GlobalDataRoamingAccess;->mGlobalDataRoamingAccessObserver:Lcom/android/phone/GlobalDataRoamingAccess$GlobalDataRoamingAccessObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    return-void
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 2
    .param p1    # Landroid/app/AlertDialog$Builder;

    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    const v0, 0x104000a

    new-instance v1, Lcom/android/phone/GlobalDataRoamingAccess$1;

    invoke-direct {v1, p0}, Lcom/android/phone/GlobalDataRoamingAccess$1;-><init>(Lcom/android/phone/GlobalDataRoamingAccess;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v0, 0x1040000

    new-instance v1, Lcom/android/phone/GlobalDataRoamingAccess$2;

    invoke-direct {v1, p0}, Lcom/android/phone/GlobalDataRoamingAccess$2;-><init>(Lcom/android/phone/GlobalDataRoamingAccess;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    return-void
.end method

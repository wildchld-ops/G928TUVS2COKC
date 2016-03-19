.class Lcom/android/phone/TtyListPreference$DownloadListAdapter;
.super Landroid/widget/BaseAdapter;
.source "TtyListPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/TtyListPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DownloadListAdapter"
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field public mEntries:[Ljava/lang/String;

.field public mEntriesValues:[Ljava/lang/String;

.field mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object v1, p0, Lcom/android/phone/TtyListPreference$DownloadListAdapter;->context:Landroid/content/Context;

    iput-object v1, p0, Lcom/android/phone/TtyListPreference$DownloadListAdapter;->mInflater:Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/android/phone/TtyListPreference$DownloadListAdapter;->mEntries:[Ljava/lang/String;

    iput-object v1, p0, Lcom/android/phone/TtyListPreference$DownloadListAdapter;->mEntriesValues:[Ljava/lang/String;

    iput-object p1, p0, Lcom/android/phone/TtyListPreference$DownloadListAdapter;->context:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/android/phone/TtyListPreference$DownloadListAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0900b0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/TtyListPreference$DownloadListAdapter;->mEntries:[Ljava/lang/String;

    const v1, 0x7f0900b1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/TtyListPreference$DownloadListAdapter;->mEntriesValues:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/phone/TtyListPreference$DownloadListAdapter;->mEntries:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/TtyListPreference$DownloadListAdapter;->mEntries:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/phone/TtyListPreference$DownloadListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0400ba

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v1, 0x1020014

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/phone/TtyListPreference$DownloadListAdapter;->mEntries:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v1, "mohit"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "position"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    # getter for: Lcom/android/phone/TtyListPreference;->disableListItem:Z
    invoke-static {}, Lcom/android/phone/TtyListPreference;->access$500()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setFocusable(Z)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setClickable(Z)V

    :cond_0
    return-object v0
.end method

.method public isEnabled(I)Z
    .locals 1

    if-nez p1, :cond_0

    # getter for: Lcom/android/phone/TtyListPreference;->disableListItem:Z
    invoke-static {}, Lcom/android/phone/TtyListPreference;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/BaseAdapter;->isEnabled(I)Z

    move-result v0

    goto :goto_0
.end method

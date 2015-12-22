.class public Lcom/android/phone/photoring/PhotoringPhraseList$PhraseAdapter;
.super Landroid/widget/BaseAdapter;
.source "PhotoringPhraseList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/photoring/PhotoringPhraseList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PhraseAdapter"
.end annotation


# instance fields
.field private context:Landroid/app/Activity;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/photoring/PhotoringPhrase;",
            ">;"
        }
    .end annotation
.end field

.field private maCBox:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/CheckBox;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/phone/photoring/PhotoringPhraseList;


# direct methods
.method public constructor <init>(Lcom/android/phone/photoring/PhotoringPhraseList;Landroid/app/Activity;Ljava/util/ArrayList;)V
    .locals 1
    .param p2    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/photoring/PhotoringPhrase;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/phone/photoring/PhotoringPhraseList$PhraseAdapter;->this$0:Lcom/android/phone/photoring/PhotoringPhraseList;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p2, p0, Lcom/android/phone/photoring/PhotoringPhraseList$PhraseAdapter;->context:Landroid/app/Activity;

    iput-object p3, p0, Lcom/android/phone/photoring/PhotoringPhraseList$PhraseAdapter;->mList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoringPhraseList$PhraseAdapter;->context:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/photoring/PhotoringPhraseList$PhraseAdapter;->mInflater:Landroid/view/LayoutInflater;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/photoring/PhotoringPhraseList$PhraseAdapter;->maCBox:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoringPhraseList$PhraseAdapter;->maCBox:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoringPhraseList$PhraseAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/android/phone/photoring/PhotoringPhrase;
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoringPhraseList$PhraseAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/photoring/PhotoringPhrase;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1    # I

    invoke-virtual {p0, p1}, Lcom/android/phone/photoring/PhotoringPhraseList$PhraseAdapter;->getItem(I)Lcom/android/phone/photoring/PhotoringPhrase;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1    # I

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoringPhraseList$PhraseAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/photoring/PhotoringPhrase;

    iget-wide v0, v0, Lcom/android/phone/photoring/PhotoringPhrase;->id:J

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1    # I
    .param p2    # Landroid/view/View;
    .param p3    # Landroid/view/ViewGroup;

    const/4 v9, 0x0

    iget-object v6, p0, Lcom/android/phone/photoring/PhotoringPhraseList$PhraseAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f040074

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/photoring/PhotoringPhraseList$PhraseAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/photoring/PhotoringPhrase;

    const v6, 0x7f10016b

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    const v6, 0x7f10016c

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iget-object v6, v1, Lcom/android/phone/photoring/PhotoringPhrase;->thumb:Ljava/lang/String;

    if-eqz v6, :cond_0

    iget-object v6, v1, Lcom/android/phone/photoring/PhotoringPhrase;->thumb:Ljava/lang/String;

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    const v6, 0x7f1000e1

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v6, v1, Lcom/android/phone/photoring/PhotoringPhrase;->message:Ljava/lang/String;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v6, 0x7f10016d

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iget-object v6, p0, Lcom/android/phone/photoring/PhotoringPhraseList$PhraseAdapter;->maCBox:Ljava/util/ArrayList;

    invoke-virtual {v6, p1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v6, p0, Lcom/android/phone/photoring/PhotoringPhraseList$PhraseAdapter;->this$0:Lcom/android/phone/photoring/PhotoringPhraseList;

    # getter for: Lcom/android/phone/photoring/PhotoringPhraseList;->mScreenMode:I
    invoke-static {v6}, Lcom/android/phone/photoring/PhotoringPhraseList;->access$000(Lcom/android/phone/photoring/PhotoringPhraseList;)I

    move-result v6

    if-nez v6, :cond_1

    const/4 v6, 0x4

    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setVisibility(I)V

    :goto_1
    return-object v5

    :cond_0
    const v6, 0x7f020050

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v9}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_1
.end method

.method public isChecked(I)Z
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoringPhraseList$PhraseAdapter;->maCBox:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    return v0
.end method

.method public isCheckedAll()Z
    .locals 3

    iget-object v2, p0, Lcom/android/phone/photoring/PhotoringPhraseList$PhraseAdapter;->maCBox:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public isNonCheckedAll()Z
    .locals 3

    iget-object v2, p0, Lcom/android/phone/photoring/PhotoringPhraseList$PhraseAdapter;->maCBox:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public setCheckedAll(Z)V
    .locals 3
    .param p1    # Z

    iget-object v2, p0, Lcom/android/phone/photoring/PhotoringPhraseList$PhraseAdapter;->maCBox:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

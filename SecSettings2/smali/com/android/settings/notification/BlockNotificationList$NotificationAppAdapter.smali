.class Lcom/android/settings/notification/BlockNotificationList$NotificationAppAdapter;
.super Landroid/widget/ArrayAdapter;
.source "BlockNotificationList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/BlockNotificationList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotificationAppAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/settings/notification/BlockNotificationList$Row;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/BlockNotificationList;


# direct methods
.method public constructor <init>(Lcom/android/settings/notification/BlockNotificationList;Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/android/settings/notification/BlockNotificationList$NotificationAppAdapter;->this$0:Lcom/android/settings/notification/BlockNotificationList;

    invoke-direct {p0, p2, v0, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II)V

    return-void
.end method

.method private enableLayoutTransitions(Landroid/view/ViewGroup;Z)V
    .locals 3

    const/4 v2, 0x3

    const/4 v1, 0x2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    goto :goto_0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Lcom/android/settings/notification/BlockNotificationList$Row;Z)V
    .locals 7

    instance-of v3, p2, Lcom/android/settings/notification/BlockNotificationList$AppRow;

    if-nez v3, :cond_0

    const v3, 0x1020016

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v3, p2, Lcom/android/settings/notification/BlockNotificationList$Row;->section:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    move-object v0, p2

    check-cast v0, Lcom/android/settings/notification/BlockNotificationList$AppRow;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/notification/BlockNotificationList$ViewHolder;

    iget-object v3, v2, Lcom/android/settings/notification/BlockNotificationList$ViewHolder;->row:Landroid/view/ViewGroup;

    invoke-direct {p0, v3, p3}, Lcom/android/settings/notification/BlockNotificationList$NotificationAppAdapter;->enableLayoutTransitions(Landroid/view/ViewGroup;Z)V

    iget-object v4, v2, Lcom/android/settings/notification/BlockNotificationList$ViewHolder;->rowDivider:Landroid/view/View;

    iget-boolean v3, v0, Lcom/android/settings/notification/BlockNotificationList$AppRow;->first:Z

    if-eqz v3, :cond_1

    const/4 v3, 0x4

    :goto_1
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, v2, Lcom/android/settings/notification/BlockNotificationList$ViewHolder;->mSwitch:Landroid/widget/Switch;

    new-instance v4, Lcom/android/settings/notification/BlockNotificationList$NotificationAppAdapter$1;

    invoke-direct {v4, p0, v0, v2}, Lcom/android/settings/notification/BlockNotificationList$NotificationAppAdapter$1;-><init>(Lcom/android/settings/notification/BlockNotificationList$NotificationAppAdapter;Lcom/android/settings/notification/BlockNotificationList$AppRow;Lcom/android/settings/notification/BlockNotificationList$ViewHolder;)V

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v3, v2, Lcom/android/settings/notification/BlockNotificationList$ViewHolder;->row:Landroid/view/ViewGroup;

    invoke-direct {p0, v3, p3}, Lcom/android/settings/notification/BlockNotificationList$NotificationAppAdapter;->enableLayoutTransitions(Landroid/view/ViewGroup;Z)V

    iget-object v3, v2, Lcom/android/settings/notification/BlockNotificationList$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v4, v0, Lcom/android/settings/notification/BlockNotificationList$AppRow;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, v2, Lcom/android/settings/notification/BlockNotificationList$ViewHolder;->mSwitch:Landroid/widget/Switch;

    iget-object v4, v0, Lcom/android/settings/notification/BlockNotificationList$AppRow;->label:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v2, Lcom/android/settings/notification/BlockNotificationList$ViewHolder;->mSwitch:Landroid/widget/Switch;

    iget-object v4, p0, Lcom/android/settings/notification/BlockNotificationList$NotificationAppAdapter;->this$0:Lcom/android/settings/notification/BlockNotificationList;

    # getter for: Lcom/android/settings/notification/BlockNotificationList;->mBackend:Lcom/android/settings/notification/NotificationAppList$Backend;
    invoke-static {v4}, Lcom/android/settings/notification/BlockNotificationList;->access$900(Lcom/android/settings/notification/BlockNotificationList;)Lcom/android/settings/notification/NotificationAppList$Backend;

    move-result-object v4

    iget-object v5, v0, Lcom/android/settings/notification/BlockNotificationList$AppRow;->pkg:Ljava/lang/String;

    iget v6, v0, Lcom/android/settings/notification/BlockNotificationList$AppRow;->uid:I

    invoke-virtual {v4, v5, v6}, Lcom/android/settings/notification/NotificationAppList$Backend;->getNotificationsBanned(Ljava/lang/String;I)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/settings/notification/BlockNotificationList$NotificationAppAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notification/BlockNotificationList$Row;

    instance-of v1, v0, Lcom/android/settings/notification/BlockNotificationList$AppRow;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    invoke-virtual {p0, p1}, Lcom/android/settings/notification/BlockNotificationList$NotificationAppAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notification/BlockNotificationList$Row;

    invoke-virtual {p0, p3, v0}, Lcom/android/settings/notification/BlockNotificationList$NotificationAppAdapter;->newView(Landroid/view/ViewGroup;Lcom/android/settings/notification/BlockNotificationList$Row;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/settings/notification/BlockNotificationList$NotificationAppAdapter;->bindView(Landroid/view/View;Lcom/android/settings/notification/BlockNotificationList$Row;Z)V

    return-object v1
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public newView(Landroid/view/ViewGroup;Lcom/android/settings/notification/BlockNotificationList$Row;)Landroid/view/View;
    .locals 5

    const/4 v4, 0x0

    instance-of v2, p2, Lcom/android/settings/notification/BlockNotificationList$AppRow;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/notification/BlockNotificationList$NotificationAppAdapter;->this$0:Lcom/android/settings/notification/BlockNotificationList;

    # getter for: Lcom/android/settings/notification/BlockNotificationList;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v2}, Lcom/android/settings/notification/BlockNotificationList;->access$1900(Lcom/android/settings/notification/BlockNotificationList;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0400f6

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v2, p0, Lcom/android/settings/notification/BlockNotificationList$NotificationAppAdapter;->this$0:Lcom/android/settings/notification/BlockNotificationList;

    # getter for: Lcom/android/settings/notification/BlockNotificationList;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v2}, Lcom/android/settings/notification/BlockNotificationList;->access$1900(Lcom/android/settings/notification/BlockNotificationList;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040024

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/settings/notification/BlockNotificationList$ViewHolder;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/settings/notification/BlockNotificationList$ViewHolder;-><init>(Lcom/android/settings/notification/BlockNotificationList$1;)V

    move-object v2, v0

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, v1, Lcom/android/settings/notification/BlockNotificationList$ViewHolder;->row:Landroid/view/ViewGroup;

    iget-object v2, v1, Lcom/android/settings/notification/BlockNotificationList$ViewHolder;->row:Landroid/view/ViewGroup;

    new-instance v3, Landroid/animation/LayoutTransition;

    invoke-direct {v3}, Landroid/animation/LayoutTransition;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    iget-object v2, v1, Lcom/android/settings/notification/BlockNotificationList$ViewHolder;->row:Landroid/view/ViewGroup;

    new-instance v3, Landroid/animation/LayoutTransition;

    invoke-direct {v3}, Landroid/animation/LayoutTransition;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    const v2, 0x1020006

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/android/settings/notification/BlockNotificationList$ViewHolder;->icon:Landroid/widget/ImageView;

    const v2, 0x7f100068

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/android/settings/notification/BlockNotificationList$ViewHolder;->rowDivider:Landroid/view/View;

    const v2, 0x7f10006f

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Switch;

    iput-object v2, v1, Lcom/android/settings/notification/BlockNotificationList$ViewHolder;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method

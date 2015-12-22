.class Lcom/android/settings/notification/BlockNotificationList$2;
.super Ljava/lang/Object;
.source "BlockNotificationList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/BlockNotificationList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/BlockNotificationList;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/BlockNotificationList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/android/settings/notification/BlockNotificationList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/android/settings/notification/BlockNotificationList;

    # invokes: Lcom/android/settings/notification/BlockNotificationList;->refreshDisplayedItems()V
    invoke-static {v0}, Lcom/android/settings/notification/BlockNotificationList;->access$1500(Lcom/android/settings/notification/BlockNotificationList;)V

    iget-object v0, p0, Lcom/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/android/settings/notification/BlockNotificationList;

    # getter for: Lcom/android/settings/notification/BlockNotificationList;->mAdapter:Lcom/android/settings/notification/BlockNotificationList$NotificationAppAdapter;
    invoke-static {v0}, Lcom/android/settings/notification/BlockNotificationList;->access$1600(Lcom/android/settings/notification/BlockNotificationList;)Lcom/android/settings/notification/BlockNotificationList$NotificationAppAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/android/settings/notification/BlockNotificationList;

    # getter for: Lcom/android/settings/notification/BlockNotificationList;->mAdapter:Lcom/android/settings/notification/BlockNotificationList$NotificationAppAdapter;
    invoke-static {v0}, Lcom/android/settings/notification/BlockNotificationList;->access$1600(Lcom/android/settings/notification/BlockNotificationList;)Lcom/android/settings/notification/BlockNotificationList$NotificationAppAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/notification/BlockNotificationList$NotificationAppAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/android/settings/notification/BlockNotificationList;

    # getter for: Lcom/android/settings/notification/BlockNotificationList;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings/notification/BlockNotificationList;->access$1700(Lcom/android/settings/notification/BlockNotificationList;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0a07ba

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/android/settings/notification/BlockNotificationList;

    invoke-virtual {v0}, Lcom/android/settings/notification/BlockNotificationList;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/android/settings/notification/BlockNotificationList;

    invoke-virtual {v0}, Lcom/android/settings/notification/BlockNotificationList;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    iget-object v0, p0, Lcom/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/android/settings/notification/BlockNotificationList;

    invoke-virtual {v0}, Lcom/android/settings/notification/BlockNotificationList;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0
.end method

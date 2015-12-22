.class Lcom/android/settings/notification/BlockNotificationList$NotificationAppAdapter$1;
.super Ljava/lang/Object;
.source "BlockNotificationList.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/BlockNotificationList$NotificationAppAdapter;->bindView(Landroid/view/View;Lcom/android/settings/notification/BlockNotificationList$Row;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private listener:Lcom/android/settings/notification/BlockNotificationList$ClickListener;

.field final synthetic this$1:Lcom/android/settings/notification/BlockNotificationList$NotificationAppAdapter;

.field final synthetic val$row:Lcom/android/settings/notification/BlockNotificationList$AppRow;

.field final synthetic val$vh:Lcom/android/settings/notification/BlockNotificationList$ViewHolder;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/BlockNotificationList$NotificationAppAdapter;Lcom/android/settings/notification/BlockNotificationList$AppRow;Lcom/android/settings/notification/BlockNotificationList$ViewHolder;)V
    .locals 2

    iput-object p1, p0, Lcom/android/settings/notification/BlockNotificationList$NotificationAppAdapter$1;->this$1:Lcom/android/settings/notification/BlockNotificationList$NotificationAppAdapter;

    iput-object p2, p0, Lcom/android/settings/notification/BlockNotificationList$NotificationAppAdapter$1;->val$row:Lcom/android/settings/notification/BlockNotificationList$AppRow;

    iput-object p3, p0, Lcom/android/settings/notification/BlockNotificationList$NotificationAppAdapter$1;->val$vh:Lcom/android/settings/notification/BlockNotificationList$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/settings/notification/BlockNotificationList$ClickListener;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/settings/notification/BlockNotificationList$ClickListener;-><init>(Lcom/android/settings/notification/BlockNotificationList$1;)V

    iput-object v0, p0, Lcom/android/settings/notification/BlockNotificationList$NotificationAppAdapter$1;->listener:Lcom/android/settings/notification/BlockNotificationList$ClickListener;

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/notification/BlockNotificationList$NotificationAppAdapter$1;->this$1:Lcom/android/settings/notification/BlockNotificationList$NotificationAppAdapter;

    iget-object v0, v0, Lcom/android/settings/notification/BlockNotificationList$NotificationAppAdapter;->this$0:Lcom/android/settings/notification/BlockNotificationList;

    # getter for: Lcom/android/settings/notification/BlockNotificationList;->mBackend:Lcom/android/settings/notification/NotificationAppList$Backend;
    invoke-static {v0}, Lcom/android/settings/notification/BlockNotificationList;->access$900(Lcom/android/settings/notification/BlockNotificationList;)Lcom/android/settings/notification/NotificationAppList$Backend;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/BlockNotificationList$NotificationAppAdapter$1;->val$row:Lcom/android/settings/notification/BlockNotificationList$AppRow;

    iget-object v1, v1, Lcom/android/settings/notification/BlockNotificationList$AppRow;->pkg:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/notification/BlockNotificationList$NotificationAppAdapter$1;->val$row:Lcom/android/settings/notification/BlockNotificationList$AppRow;

    iget v2, v2, Lcom/android/settings/notification/BlockNotificationList$AppRow;->uid:I

    invoke-virtual {v0, v1, v2, p2}, Lcom/android/settings/notification/NotificationAppList$Backend;->setNotificationsBanned(Ljava/lang/String;IZ)Z

    iget-object v0, p0, Lcom/android/settings/notification/BlockNotificationList$NotificationAppAdapter$1;->val$vh:Lcom/android/settings/notification/BlockNotificationList$ViewHolder;

    iget-object v0, v0, Lcom/android/settings/notification/BlockNotificationList$ViewHolder;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/BlockNotificationList$NotificationAppAdapter$1;->val$vh:Lcom/android/settings/notification/BlockNotificationList$ViewHolder;

    iget-object v0, v0, Lcom/android/settings/notification/BlockNotificationList$ViewHolder;->mSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/android/settings/notification/BlockNotificationList$NotificationAppAdapter$1;->listener:Lcom/android/settings/notification/BlockNotificationList$ClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

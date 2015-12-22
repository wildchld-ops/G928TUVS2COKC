.class Lcom/android/systemui/statusbar/BaseStatusBar$7;
.super Ljava/lang/Object;
.source "BaseStatusBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/BaseStatusBar;->updateNotificationVetoButton(Landroid/view/View;Landroid/service/notification/StatusBarNotification;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

.field final synthetic val$_id:I

.field final synthetic val$_pkg:Ljava/lang/String;

.field final synthetic val$_tag:Ljava/lang/String;

.field final synthetic val$_userId:I


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/BaseStatusBar;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$7;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iput-object p2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$7;->val$_pkg:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/statusbar/BaseStatusBar$7;->val$_tag:Ljava/lang/String;

    iput p4, p0, Lcom/android/systemui/statusbar/BaseStatusBar$7;->val$_id:I

    iput p5, p0, Lcom/android/systemui/statusbar/BaseStatusBar$7;->val$_userId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$7;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const v1, 0x7f0d02a4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$7;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$7;->val$_pkg:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$7;->val$_tag:Ljava/lang/String;

    iget v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar$7;->val$_id:I

    iget v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar$7;->val$_userId:I

    iget-object v5, p0, Lcom/android/systemui/statusbar/BaseStatusBar$7;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget v5, v5, Lcom/android/systemui/statusbar/BaseStatusBar;->mReasonClear:I

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationClearWithReason(Ljava/lang/String;Ljava/lang/String;III)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$7;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mReasonClear:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

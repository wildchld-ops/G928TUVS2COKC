.class Lcom/android/systemui/statusbar/BaseStatusBar$16$1$1;
.super Ljava/lang/Object;
.source "BaseStatusBar.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardHostView$OnDismissAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/BaseStatusBar$16$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/systemui/statusbar/BaseStatusBar$16$1;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/BaseStatusBar$16$1;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$16$1$1;->this$2:Lcom/android/systemui/statusbar/BaseStatusBar$16$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$16$1$1;->this$2:Lcom/android/systemui/statusbar/BaseStatusBar$16$1;

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar$16$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$16;

    iget-object v1, v0, Lcom/android/systemui/statusbar/BaseStatusBar$16;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$16$1$1;->this$2:Lcom/android/systemui/statusbar/BaseStatusBar$16$1;

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar$16$1;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    # invokes: Lcom/android/systemui/statusbar/BaseStatusBar;->doBlock(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->access$1500(Lcom/android/systemui/statusbar/BaseStatusBar;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    const/4 v0, 0x0

    return v0
.end method

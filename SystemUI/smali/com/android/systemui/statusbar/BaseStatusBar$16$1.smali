.class Lcom/android/systemui/statusbar/BaseStatusBar$16$1;
.super Ljava/lang/Object;
.source "BaseStatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/BaseStatusBar$16;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/BaseStatusBar$16;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/BaseStatusBar$16;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$16$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$16;

    iput-object p2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$16$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$16$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$16;

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar$16;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    new-instance v1, Lcom/android/systemui/statusbar/BaseStatusBar$16$1$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/BaseStatusBar$16$1$1;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar$16$1;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/android/systemui/statusbar/BaseStatusBar;->dismissKeyguardThenExecute(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;ZZZ)V

    return-void
.end method

.class Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$4;
.super Ljava/lang/Object;
.source "FloatingBackKeyLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->moveToPositionAnim(IIZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

.field final synthetic val$isReverse:Z

.field final synthetic val$jumpTo:I

.field final synthetic val$start:I


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;ZII)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$4;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$4;->val$isReverse:Z

    iput p3, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$4;->val$start:I

    iput p4, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$4;->val$jumpTo:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$4;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    # getter for: Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->access$1000(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$4;->val$isReverse:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$4;->val$start:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$4;->val$jumpTo:I

    add-int/2addr v0, v2

    :goto_0
    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$4;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    # invokes: Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->updateWindowParams()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->access$1100(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)V

    return-void

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$4;->val$start:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$4;->val$jumpTo:I

    sub-int/2addr v0, v2

    goto :goto_0
.end method

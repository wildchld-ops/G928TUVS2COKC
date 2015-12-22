.class Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout$1;
.super Ljava/lang/Object;
.source "FloatingKeyButtonLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout$1;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout$1;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;

    # invokes: Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->hide()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->access$000(Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;)V

    return-void
.end method

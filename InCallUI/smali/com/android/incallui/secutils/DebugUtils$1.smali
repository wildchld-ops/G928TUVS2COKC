.class Lcom/android/incallui/secutils/DebugUtils$1;
.super Ljava/lang/Object;
.source "DebugUtils.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/secutils/DebugUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/secutils/DebugUtils;


# direct methods
.method constructor <init>(Lcom/android/incallui/secutils/DebugUtils;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/secutils/DebugUtils$1;->this$0:Lcom/android/incallui/secutils/DebugUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v1, p0, Lcom/android/incallui/secutils/DebugUtils$1;->this$0:Lcom/android/incallui/secutils/DebugUtils;

    invoke-virtual {v1}, Lcom/android/incallui/secutils/DebugUtils;->toggleDebugScreen()V

    goto :goto_0

    :pswitch_2
    invoke-static {}, Lcom/android/incallui/secutils/DebugUtils;->clearLog()V

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/android/incallui/secutils/DebugUtils$1;->this$0:Lcom/android/incallui/secutils/DebugUtils;

    invoke-virtual {v1}, Lcom/android/incallui/secutils/DebugUtils;->increaseScreen()V

    goto :goto_0

    :pswitch_4
    iget-object v1, p0, Lcom/android/incallui/secutils/DebugUtils$1;->this$0:Lcom/android/incallui/secutils/DebugUtils;

    invoke-virtual {v1}, Lcom/android/incallui/secutils/DebugUtils;->decreaseScreen()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f10006d
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method

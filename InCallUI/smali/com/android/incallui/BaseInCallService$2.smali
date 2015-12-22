.class Lcom/android/incallui/BaseInCallService$2;
.super Ljava/lang/Object;
.source "BaseInCallService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/BaseInCallService;->showErrorDialog(Ljava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/BaseInCallService;


# direct methods
.method constructor <init>(Lcom/android/incallui/BaseInCallService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/BaseInCallService$2;->this$0:Lcom/android/incallui/BaseInCallService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/BaseInCallService$2;->this$0:Lcom/android/incallui/BaseInCallService;

    # invokes: Lcom/android/incallui/BaseInCallService;->onDialogDismissed()V
    invoke-static {v0}, Lcom/android/incallui/BaseInCallService;->access$000(Lcom/android/incallui/BaseInCallService;)V

    return-void
.end method

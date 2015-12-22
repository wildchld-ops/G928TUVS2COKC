.class Lcom/android/incallui/SecAnswerFragment$5;
.super Ljava/lang/Object;
.source "SecAnswerFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/SecAnswerFragment;->showWaitingCallDialogGSM(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/SecAnswerFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/SecAnswerFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/SecAnswerFragment$5;->this$0:Lcom/android/incallui/SecAnswerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecAnswerFragment$5;->this$0:Lcom/android/incallui/SecAnswerFragment;

    invoke-virtual {v0}, Lcom/android/incallui/SecAnswerFragment;->dismissWaitingCallPopup()V

    return-void
.end method

.class Lcom/android/server/telecom/ErrorDialogActivity$2;
.super Ljava/lang/Object;
.source "ErrorDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/telecom/ErrorDialogActivity;->showMissingVoicemailErrorDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/telecom/ErrorDialogActivity;


# direct methods
.method constructor <init>(Lcom/android/server/telecom/ErrorDialogActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/telecom/ErrorDialogActivity$2;->this$0:Lcom/android/server/telecom/ErrorDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/ErrorDialogActivity$2;->this$0:Lcom/android/server/telecom/ErrorDialogActivity;

    # invokes: Lcom/android/server/telecom/ErrorDialogActivity;->addVoiceMailNumberPanel(Landroid/content/DialogInterface;)V
    invoke-static {v0, p1}, Lcom/android/server/telecom/ErrorDialogActivity;->access$200(Lcom/android/server/telecom/ErrorDialogActivity;Landroid/content/DialogInterface;)V

    return-void
.end method

.class Lcom/android/server/telecom/operator/usa/TelecomDialogActivity$12;
.super Ljava/lang/Object;
.source "TelecomDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/telecom/operator/usa/TelecomDialogActivity;->showActivateCompleteNumberDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/telecom/operator/usa/TelecomDialogActivity;

.field final synthetic val$dialNumber:Ljava/lang/String;

.field final synthetic val$prefixNumber:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/telecom/operator/usa/TelecomDialogActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity$12;->this$0:Lcom/android/server/telecom/operator/usa/TelecomDialogActivity;

    iput-object p2, p0, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity$12;->val$prefixNumber:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity$12;->val$dialNumber:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity$12;->this$0:Lcom/android/server/telecom/operator/usa/TelecomDialogActivity;

    iget-object v1, p0, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity$12;->val$prefixNumber:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity$12;->val$dialNumber:Ljava/lang/String;

    # invokes: Lcom/android/server/telecom/operator/usa/TelecomDialogActivity;->placeCall(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity;->access$100(Lcom/android/server/telecom/operator/usa/TelecomDialogActivity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

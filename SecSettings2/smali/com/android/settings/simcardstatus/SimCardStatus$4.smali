.class Lcom/android/settings/simcardstatus/SimCardStatus$4;
.super Ljava/lang/Object;
.source "SimCardStatus.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/simcardstatus/SimCardStatus;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/simcardstatus/SimCardStatus;


# direct methods
.method constructor <init>(Lcom/android/settings/simcardstatus/SimCardStatus;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/simcardstatus/SimCardStatus$4;->this$0:Lcom/android/settings/simcardstatus/SimCardStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/simcardstatus/SimCardStatus$4;->this$0:Lcom/android/settings/simcardstatus/SimCardStatus;

    # invokes: Lcom/android/settings/simcardstatus/SimCardStatus;->rebootDevice()V
    invoke-static {v0}, Lcom/android/settings/simcardstatus/SimCardStatus;->access$300(Lcom/android/settings/simcardstatus/SimCardStatus;)V

    return-void
.end method

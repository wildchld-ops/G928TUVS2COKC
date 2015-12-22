.class Lcom/android/settings/fmm/SimChangeAlert$3;
.super Ljava/lang/Object;
.source "SimChangeAlert.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fmm/SimChangeAlert;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fmm/SimChangeAlert;


# direct methods
.method constructor <init>(Lcom/android/settings/fmm/SimChangeAlert;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fmm/SimChangeAlert$3;->this$0:Lcom/android/settings/fmm/SimChangeAlert;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "intent.action.INTERACTION_TAB"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "additional"

    const-string v3, "phone-multi"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "existingRecipientCount"

    iget-object v3, p0, Lcom/android/settings/fmm/SimChangeAlert$3;->this$0:Lcom/android/settings/fmm/SimChangeAlert;

    invoke-virtual {v3}, Lcom/android/settings/fmm/SimChangeAlert;->getCountFilledRecipient()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "maxRecipientCount"

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settings/fmm/SimChangeAlert$3;->this$0:Lcom/android/settings/fmm/SimChangeAlert;

    const/16 v3, 0x65

    invoke-virtual {v2, v1, v3}, Lcom/android/settings/fmm/SimChangeAlert;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

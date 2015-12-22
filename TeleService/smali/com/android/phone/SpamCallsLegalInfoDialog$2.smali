.class Lcom/android/phone/SpamCallsLegalInfoDialog$2;
.super Ljava/lang/Object;
.source "SpamCallsLegalInfoDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/SpamCallsLegalInfoDialog;->showLegalInfoDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/SpamCallsLegalInfoDialog;


# direct methods
.method constructor <init>(Lcom/android/phone/SpamCallsLegalInfoDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/SpamCallsLegalInfoDialog$2;->this$0:Lcom/android/phone/SpamCallsLegalInfoDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/phone/SpamCallsLegalInfoDialog$2;->this$0:Lcom/android/phone/SpamCallsLegalInfoDialog;

    invoke-virtual {v0}, Lcom/android/phone/SpamCallsLegalInfoDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "spam_call_enable"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/phone/SpamCallsLegalInfoDialog$2;->this$0:Lcom/android/phone/SpamCallsLegalInfoDialog;

    iget-object v0, v0, Lcom/android/phone/SpamCallsLegalInfoDialog;->mNM:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v0}, Lcom/android/phone/NotificationMgr;->cancelSpamCallsFilterNotification()V

    iget-object v0, p0, Lcom/android/phone/SpamCallsLegalInfoDialog$2;->this$0:Lcom/android/phone/SpamCallsLegalInfoDialog;

    invoke-virtual {v0}, Lcom/android/phone/SpamCallsLegalInfoDialog;->finish()V

    return-void
.end method

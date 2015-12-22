.class Lcom/android/settings/nfc/TagsConnectingDevices$2;
.super Ljava/lang/Object;
.source "TagsConnectingDevices.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/nfc/TagsConnectingDevices;->makeAlertDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/nfc/TagsConnectingDevices;


# direct methods
.method constructor <init>(Lcom/android/settings/nfc/TagsConnectingDevices;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/nfc/TagsConnectingDevices$2;->this$0:Lcom/android/settings/nfc/TagsConnectingDevices;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/settings/nfc/TagsConnectingDevices$2;->this$0:Lcom/android/settings/nfc/TagsConnectingDevices;

    # getter for: Lcom/android/settings/nfc/TagsConnectingDevices;->mNfcAdapter:Landroid/nfc/NfcAdapter;
    invoke-static {v0}, Lcom/android/settings/nfc/TagsConnectingDevices;->access$200(Lcom/android/settings/nfc/TagsConnectingDevices;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->disableNdefPush()Z

    iget-object v0, p0, Lcom/android/settings/nfc/TagsConnectingDevices$2;->this$0:Lcom/android/settings/nfc/TagsConnectingDevices;

    invoke-virtual {v0}, Lcom/android/settings/nfc/TagsConnectingDevices;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_beam_state"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/settings/nfc/TagsConnectingDevices$2;->this$0:Lcom/android/settings/nfc/TagsConnectingDevices;

    # getter for: Lcom/android/settings/nfc/TagsConnectingDevices;->mNfcAdapter:Landroid/nfc/NfcAdapter;
    invoke-static {v0}, Lcom/android/settings/nfc/TagsConnectingDevices;->access$200(Lcom/android/settings/nfc/TagsConnectingDevices;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->readerDisable()Z

    iget-object v0, p0, Lcom/android/settings/nfc/TagsConnectingDevices$2;->this$0:Lcom/android/settings/nfc/TagsConnectingDevices;

    # getter for: Lcom/android/settings/nfc/TagsConnectingDevices;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;
    invoke-static {v0}, Lcom/android/settings/nfc/TagsConnectingDevices;->access$300(Lcom/android/settings/nfc/TagsConnectingDevices;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    return-void
.end method

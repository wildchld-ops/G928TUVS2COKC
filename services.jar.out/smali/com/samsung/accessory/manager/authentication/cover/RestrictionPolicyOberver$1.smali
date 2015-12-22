.class Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver$1;
.super Landroid/content/BroadcastReceiver;
.source "RestrictionPolicyOberver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;


# direct methods
.method constructor <init>(Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver$1;->this$0:Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const/4 v4, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "android.nfc.extra.ADAPTER_STATE"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    const/4 v3, 0x0

    sput-boolean v3, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->mIsFelicaAllowed:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v3, "com.sec.android.nfc.AUTH_READY"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver$1;->this$0:Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;

    # invokes: Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->getNfcAdapter()V
    invoke-static {v3}, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->access$200(Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;)V

    iget-object v3, p0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver$1;->this$0:Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;

    iget-object v3, v3, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->mNfcAdapter:Landroid/nfc/INfcAdapter;

    if-eqz v3, :cond_0

    :try_start_0
    iget-object v3, p0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver$1;->this$0:Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;

    iget-object v3, v3, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->mNfcAdapter:Landroid/nfc/INfcAdapter;

    invoke-interface {v3}, Landroid/nfc/INfcAdapter;->getState()I

    move-result v2

    sget-boolean v3, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->mIsFelicaAllowed:Z

    if-nez v3, :cond_0

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    :cond_2
    const/4 v3, 0x1

    sput-boolean v3, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->mIsFelicaAllowed:Z

    # getter for: Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->mNfcRestrictionPolicyListener:Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver$NfcRestrictionPolicyListener;
    invoke-static {}, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->access$100()Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver$NfcRestrictionPolicyListener;

    move-result-object v3

    if-eqz v3, :cond_0

    # getter for: Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->mNfcRestrictionPolicyListener:Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver$NfcRestrictionPolicyListener;
    invoke-static {}, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->access$100()Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver$NfcRestrictionPolicyListener;

    move-result-object v3

    sget-boolean v4, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->mIsFelicaAllowed:Z

    invoke-interface {v3, v4}, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver$NfcRestrictionPolicyListener;->onNfcRestrictionPolicyChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    # getter for: Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->access$300()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "nfc RemoteException"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

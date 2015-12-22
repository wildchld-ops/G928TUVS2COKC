.class Lcom/android/settings/LGTRoamingEnv$2;
.super Landroid/telephony/PhoneStateListener;
.source "LGTRoamingEnv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/LGTRoamingEnv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/LGTRoamingEnv;


# direct methods
.method constructor <init>(Lcom/android/settings/LGTRoamingEnv;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/LGTRoamingEnv$2;->this$0:Lcom/android/settings/LGTRoamingEnv;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataConnectionStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 2

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/settings/LGTRoamingEnv$2;->this$0:Lcom/android/settings/LGTRoamingEnv;

    # getter for: Lcom/android/settings/LGTRoamingEnv;->mIsWaitRadioPowerOff:Z
    invoke-static {v0}, Lcom/android/settings/LGTRoamingEnv;->access$400(Lcom/android/settings/LGTRoamingEnv;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/LGTRoamingEnv$2;->this$0:Lcom/android/settings/LGTRoamingEnv;

    # getter for: Lcom/android/settings/LGTRoamingEnv;->mIsRoamingNetworkInit:Z
    invoke-static {v0}, Lcom/android/settings/LGTRoamingEnv;->access$500(Lcom/android/settings/LGTRoamingEnv;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/LGTRoamingEnv$2;->this$0:Lcom/android/settings/LGTRoamingEnv;

    # invokes: Lcom/android/settings/LGTRoamingEnv;->setAuto()V
    invoke-static {v0}, Lcom/android/settings/LGTRoamingEnv;->access$600(Lcom/android/settings/LGTRoamingEnv;)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/LGTRoamingEnv$2;->this$0:Lcom/android/settings/LGTRoamingEnv;

    const/4 v1, 0x0

    # setter for: Lcom/android/settings/LGTRoamingEnv;->mIsWaitRadioPowerOff:Z
    invoke-static {v0, v1}, Lcom/android/settings/LGTRoamingEnv;->access$402(Lcom/android/settings/LGTRoamingEnv;Z)Z

    :cond_1
    return-void
.end method

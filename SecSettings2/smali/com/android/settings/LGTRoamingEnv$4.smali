.class Lcom/android/settings/LGTRoamingEnv$4;
.super Landroid/content/BroadcastReceiver;
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

    iput-object p1, p0, Lcom/android/settings/LGTRoamingEnv$4;->this$0:Lcom/android/settings/LGTRoamingEnv;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const/4 v4, 0x0

    invoke-static {p1}, Lcom/android/settings/Utils;->isAirplaneModeEnabled(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "GlobalRoaming"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Airplane mode changed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "state"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/LGTRoamingEnv$4;->this$0:Lcom/android/settings/LGTRoamingEnv;

    # getter for: Lcom/android/settings/LGTRoamingEnv;->mButtonCountryUpdate:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/android/settings/LGTRoamingEnv;->access$800(Lcom/android/settings/LGTRoamingEnv;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/settings/LGTRoamingEnv$4;->this$0:Lcom/android/settings/LGTRoamingEnv;

    # invokes: Lcom/android/settings/LGTRoamingEnv;->isRoamingArea()Z
    invoke-static {v1}, Lcom/android/settings/LGTRoamingEnv;->access$900(Lcom/android/settings/LGTRoamingEnv;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/LGTRoamingEnv$4;->this$0:Lcom/android/settings/LGTRoamingEnv;

    # getter for: Lcom/android/settings/LGTRoamingEnv;->mButtonCountryUpdate:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/android/settings/LGTRoamingEnv;->access$800(Lcom/android/settings/LGTRoamingEnv;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/settings/LGTRoamingEnv$4;->this$0:Lcom/android/settings/LGTRoamingEnv;

    # getter for: Lcom/android/settings/LGTRoamingEnv;->mButtonCountryUpdate:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/android/settings/LGTRoamingEnv;->access$800(Lcom/android/settings/LGTRoamingEnv;)Landroid/preference/Preference;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0
.end method

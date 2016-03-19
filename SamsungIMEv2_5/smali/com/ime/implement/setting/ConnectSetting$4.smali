.class Lcom/ime/implement/setting/ConnectSetting$4;
.super Ljava/lang/Object;
.source "ConnectSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ime/implement/setting/ConnectSetting;->showXt9GuideDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/implement/setting/ConnectSetting;


# direct methods
.method constructor <init>(Lcom/ime/implement/setting/ConnectSetting;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/implement/setting/ConnectSetting$4;->this$0:Lcom/ime/implement/setting/ConnectSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v1, p0, Lcom/ime/implement/setting/ConnectSetting$4;->this$0:Lcom/ime/implement/setting/ConnectSetting;

    const-string v2, "support_dlm"

    invoke-virtual {v1, v2}, Lcom/ime/implement/setting/ConnectSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

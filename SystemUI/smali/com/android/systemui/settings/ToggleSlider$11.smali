.class Lcom/android/systemui/settings/ToggleSlider$11;
.super Ljava/lang/Object;
.source "ToggleSlider.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/settings/ToggleSlider;->showConfirmPopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/settings/ToggleSlider;

.field final synthetic val$mDonotShow:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/android/systemui/settings/ToggleSlider;Landroid/widget/CheckBox;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/settings/ToggleSlider$11;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    iput-object p2, p0, Lcom/android/systemui/settings/ToggleSlider$11;->val$mDonotShow:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider$11;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/settings/ToggleSlider;->access$400(Lcom/android/systemui/settings/ToggleSlider;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/Prefs;->edit(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "outdoor_mode_alert_pref"

    iget-object v2, p0, Lcom/android/systemui/settings/ToggleSlider$11;->val$mDonotShow:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider$11;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    invoke-virtual {v1, v3, v3}, Lcom/android/systemui/settings/ToggleSlider;->setOutdoorMode(ZZ)V

    return-void
.end method

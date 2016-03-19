.class Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet$10;
.super Ljava/lang/Object;
.source "PersonalizerSettingsFragmentTablet.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->showSwiftKeyGuideDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;


# direct methods
.method constructor <init>(Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;)V
    .locals 0

    iput-object p1, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet$10;->this$0:Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v1, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet$10;->this$0:Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;

    const-string v2, "SETTINGS_USE_STANDARD_DATA"

    invoke-virtual {v1, v2}, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.class Lcom/ime/implement/setting/EnhancedPredictionSettings$2;
.super Ljava/lang/Object;
.source "EnhancedPredictionSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ime/implement/setting/EnhancedPredictionSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/implement/setting/EnhancedPredictionSettings;


# direct methods
.method constructor <init>(Lcom/ime/implement/setting/EnhancedPredictionSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/implement/setting/EnhancedPredictionSettings$2;->this$0:Lcom/ime/implement/setting/EnhancedPredictionSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/ime/implement/setting/EnhancedPredictionSettings$2;->this$0:Lcom/ime/implement/setting/EnhancedPredictionSettings;

    const-class v2, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/ime/implement/setting/EnhancedPredictionSettings$2;->this$0:Lcom/ime/implement/setting/EnhancedPredictionSettings;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/ime/implement/setting/EnhancedPredictionSettings;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 v1, 0x1

    return v1
.end method

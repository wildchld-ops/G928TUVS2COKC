.class Lcom/android/settings/powersavingmode/GenericPowerSavingMode$3;
.super Ljava/lang/Object;
.source "GenericPowerSavingMode.java"

# interfaces
.implements Lcom/android/settings/notification/DropDownPreference$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->initEntry()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/powersavingmode/GenericPowerSavingMode;


# direct methods
.method constructor <init>(Lcom/android/settings/powersavingmode/GenericPowerSavingMode;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode$3;->this$0:Lcom/android/settings/powersavingmode/GenericPowerSavingMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(ILjava/lang/Object;)Z
    .locals 3

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode$3;->this$0:Lcom/android/settings/powersavingmode/GenericPowerSavingMode;

    # invokes: Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->access$400(Lcom/android/settings/powersavingmode/GenericPowerSavingMode;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "low_power_trigger_level"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v1, 0x1

    return v1
.end method

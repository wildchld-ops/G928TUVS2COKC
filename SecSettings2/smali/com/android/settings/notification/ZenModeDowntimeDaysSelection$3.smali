.class Lcom/android/settings/notification/ZenModeDowntimeDaysSelection$3;
.super Ljava/lang/Object;
.source "ZenModeDowntimeDaysSelection.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;-><init>(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/notification/ZenModeDowntimeDaysSelection$3;->this$0:Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeDowntimeDaysSelection$3;->this$0:Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;

    # getter for: Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;->mDisableListeners:Z
    invoke-static {v1}, Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;->access$100(Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeDowntimeDaysSelection$3;->this$0:Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;

    const-string v2, "days:1,2,3,4,5,6,7"

    invoke-virtual {v1, v2}, Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;->onChanged(Ljava/lang/String;)V

    :goto_1
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeDowntimeDaysSelection$3;->this$0:Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;

    const/4 v2, 0x1

    # setter for: Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;->mDisableListeners:Z
    invoke-static {v1, v2}, Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;->access$102(Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;Z)Z

    const/4 v0, 0x1

    :goto_2
    sget-object v1, Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;->DAYS:[I

    array-length v1, v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeDowntimeDaysSelection$3;->this$0:Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;

    # getter for: Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;->mDaysCheckBox:[Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;->access$300(Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;)[Landroid/widget/CheckBox;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {v1, p2}, Landroid/widget/CheckBox;->setChecked(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeDowntimeDaysSelection$3;->this$0:Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;->onChanged(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeDowntimeDaysSelection$3;->this$0:Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;

    const/4 v2, 0x0

    # setter for: Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;->mDisableListeners:Z
    invoke-static {v1, v2}, Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;->access$102(Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;Z)Z

    goto :goto_0
.end method

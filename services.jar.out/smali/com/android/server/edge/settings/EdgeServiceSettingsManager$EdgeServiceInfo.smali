.class Lcom/android/server/edge/settings/EdgeServiceSettingsManager$EdgeServiceInfo;
.super Ljava/lang/Object;
.source "EdgeServiceSettingsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/edge/settings/EdgeServiceSettingsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EdgeServiceInfo"
.end annotation


# instance fields
.field name:Landroid/content/ComponentName;

.field position:I

.field running:Z

.field final synthetic this$0:Lcom/android/server/edge/settings/EdgeServiceSettingsManager;


# direct methods
.method public constructor <init>(Lcom/android/server/edge/settings/EdgeServiceSettingsManager;Landroid/content/ComponentName;I)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/edge/settings/EdgeServiceSettingsManager$EdgeServiceInfo;->this$0:Lcom/android/server/edge/settings/EdgeServiceSettingsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/edge/settings/EdgeServiceSettingsManager$EdgeServiceInfo;->name:Landroid/content/ComponentName;

    iput p3, p0, Lcom/android/server/edge/settings/EdgeServiceSettingsManager$EdgeServiceInfo;->position:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/edge/settings/EdgeServiceSettingsManager$EdgeServiceInfo;->running:Z

    return-void
.end method


# virtual methods
.method public equals(Landroid/content/ComponentName;I)Z
    .locals 1

    iget v0, p0, Lcom/android/server/edge/settings/EdgeServiceSettingsManager$EdgeServiceInfo;->position:I

    if-ne v0, p2, :cond_0

    iget-object v0, p0, Lcom/android/server/edge/settings/EdgeServiceSettingsManager$EdgeServiceInfo;->name:Landroid/content/ComponentName;

    invoke-virtual {v0, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

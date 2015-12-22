.class final Lcom/android/server/enterprise/restriction/RestrictionPolicy$5;
.super Ljava/util/HashMap;
.source "RestrictionPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/restriction/RestrictionPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v0, "debug.layout"

    const-string/jumbo v1, "false"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy$5;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "persist.sys.ui.hw"

    const-string/jumbo v1, "false"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy$5;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "debug.egl.force_msaa"

    const-string/jumbo v1, "false"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy$5;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "debug.hwui.show_dirty_regions"

    const-string/jumbo v1, "false"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy$5;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "debug.hwui.show_layers_updates"

    const-string/jumbo v1, "false"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy$5;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

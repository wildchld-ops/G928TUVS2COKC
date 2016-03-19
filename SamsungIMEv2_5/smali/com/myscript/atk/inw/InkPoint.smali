.class public Lcom/myscript/atk/inw/InkPoint;
.super Ljava/lang/Object;
.source "InkPoint.java"


# instance fields
.field public p:F

.field public t:J

.field public x:F

.field public y:F


# direct methods
.method public constructor <init>()V
    .locals 6

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v4, 0x0

    move-object v0, p0

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Lcom/myscript/atk/inw/InkPoint;->set(FFFJ)V

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/myscript/atk/inw/InkPoint;->set(FFFJ)V

    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/myscript/atk/inw/InkPoint;->set(FFFJ)V

    return-void
.end method

.method public constructor <init>(FFFJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual/range {p0 .. p5}, Lcom/myscript/atk/inw/InkPoint;->set(FFFJ)V

    return-void
.end method

.method public constructor <init>(Lcom/myscript/atk/inw/InkPoint;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v1, p1, Lcom/myscript/atk/inw/InkPoint;->x:F

    iget v2, p1, Lcom/myscript/atk/inw/InkPoint;->y:F

    iget v3, p1, Lcom/myscript/atk/inw/InkPoint;->p:F

    iget-wide v4, p1, Lcom/myscript/atk/inw/InkPoint;->t:J

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/myscript/atk/inw/InkPoint;->set(FFFJ)V

    return-void
.end method


# virtual methods
.method public equals(Lcom/myscript/atk/inw/InkPoint;)Z
    .locals 4

    iget v0, p1, Lcom/myscript/atk/inw/InkPoint;->x:F

    iget v1, p0, Lcom/myscript/atk/inw/InkPoint;->x:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p1, Lcom/myscript/atk/inw/InkPoint;->y:F

    iget v1, p0, Lcom/myscript/atk/inw/InkPoint;->y:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p1, Lcom/myscript/atk/inw/InkPoint;->p:F

    iget v1, p0, Lcom/myscript/atk/inw/InkPoint;->p:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-wide v0, p1, Lcom/myscript/atk/inw/InkPoint;->t:J

    iget-wide v2, p0, Lcom/myscript/atk/inw/InkPoint;->t:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public set(FF)V
    .locals 6

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/myscript/atk/inw/InkPoint;->set(FFFJ)V

    return-void
.end method

.method public set(FFF)V
    .locals 6

    const-wide/16 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/myscript/atk/inw/InkPoint;->set(FFFJ)V

    return-void
.end method

.method public set(FFFJ)V
    .locals 0

    iput p1, p0, Lcom/myscript/atk/inw/InkPoint;->x:F

    iput p2, p0, Lcom/myscript/atk/inw/InkPoint;->y:F

    iput p3, p0, Lcom/myscript/atk/inw/InkPoint;->p:F

    iput-wide p4, p0, Lcom/myscript/atk/inw/InkPoint;->t:J

    return-void
.end method

.method public set(Lcom/myscript/atk/inw/InkPoint;)V
    .locals 6

    iget v1, p1, Lcom/myscript/atk/inw/InkPoint;->x:F

    iget v2, p1, Lcom/myscript/atk/inw/InkPoint;->y:F

    iget v3, p1, Lcom/myscript/atk/inw/InkPoint;->p:F

    iget-wide v4, p1, Lcom/myscript/atk/inw/InkPoint;->t:J

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/myscript/atk/inw/InkPoint;->set(FFFJ)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    check-cast v0, Ljava/util/Locale;

    const-string v1, "x=%f y=%f p=f% t=%d"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/myscript/atk/inw/InkPoint;->x:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/myscript/atk/inw/InkPoint;->y:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p0, Lcom/myscript/atk/inw/InkPoint;->p:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-wide v4, p0, Lcom/myscript/atk/inw/InkPoint;->t:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

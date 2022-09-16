/*
  Warnings:

  - You are about to alter the column `Data_security_similarity` on the `news_feed` table. The data in that column could be lost. The data in that column will be cast from `DoublePrecision` to `Integer`.
  - You are about to drop the `Note` table. If the table is not empty, all the data it contains will be lost.
  - Added the required column `updatedAt` to the `news_feed` table without a default value. This is not possible if the table is not empty.
  - Changed the type of `request_id` on the `news_feed` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.

*/
-- AlterTable
ALTER TABLE "news_feed" ADD COLUMN     "Sustainable_Development_Goal_9_sentiment" TEXT,
ADD COLUMN     "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "updatedAt" TIMESTAMP(3) NOT NULL,
DROP COLUMN "request_id",
ADD COLUMN     "request_id" INTEGER NOT NULL,
ALTER COLUMN "Data_security_similarity" SET DATA TYPE INTEGER;

-- DropTable
DROP TABLE "Note";
